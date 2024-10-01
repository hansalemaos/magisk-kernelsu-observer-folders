#!/system/bin/sh

folderfile="/sdcard/hansgisk/folderfile.txt"
MODDIR=${0%/*}
while [ "$(getprop sys.boot_completed)" != 1 ]; do
    sleep 1
done
while [ ! -d "/sdcard" ]; do
    sleep 3
done
if [ ! -f "$folderfile" ]; then
    exit 0
fi


while true; do
    allfiles2update="$(cat "$folderfile")"
    for myfilenumber in $(seq 1 $(printf "%s\n" "$allfiles2update" | /system/bin/wc -l)); do
        sleeptimesourcef="$(printf "%s" "$allfiles2update" | /system/bin/sed -n "${myfilenumber}p")"
        sleeptime="$(printf "%s" "$sleeptimesourcef" | /system/bin/awk '{print $1}')"
        sourcef="$(printf "%s" "$sleeptimesourcef" | /system/bin/sed -E 's/^[[:digit:]]+[[:blank:]]+//g')"
        echo "${sourcef}"
        echo "${sleeptime}"
        if [ -z "$sourcef" ]; then
            continue
        fi
        if [ ! -d "$sourcef" ]; then
            continue
        fi
        newfolder="/sdcard/hansgisk$sourcef"
        mkdir -p "$newfolder"
        newff="$(/system/bin/date +'%d_%m_%Y_%H_%M_%S_%3N')"
        echo "${newff}"

        abspathresults="$newfolder/${newff}.txt"
        echo "${abspathresults}"

        (/system/bin/find "$sourcef" -maxdepth 30 -printf "%M\t%Z\t%s\t%u\t%g\t%l\t%p\t%T@\t%U\t%G\t%m\t%P\t%f\n" && /system/bin/find "$sourcef" -maxdepth 30 -iname ".*" -printf "%M\t%Z\t%s\t%u\t%g\t%l\t%p\t%T@\t%U\t%G\t%m\t%P\t%f\n") >"$abspathresults"
    done
    sleep "$sleeptime"
done
