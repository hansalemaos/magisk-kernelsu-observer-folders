### Install the module (only tested with VMs / Emulators!)

### create a file called *folderfile.txt*
#### and add in each line Interval + Folder

```sh
60 /data/data/com.spotify.music
60 /data/user/0/com.spotify.music
160 /data/data/com.termux
```

### copy the to */sdcard/hansgisk/*

```sh
adb -s 127.0.0.1:5556 push C:\Users\hansc\Desktop\blissin\folderfile.txt /sdcard/hansgisk/
```

### reboot, logging should start now 

```sh
VirtualBox:/ # head /sdcard/hansgisk/data/data/com.termux/29_09_2024_07_10_15_836.txt
drwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  4096    u0_a290 u0_a290         /data/data/com.termux   1727327330.706000000    10290   10290   700             /data/data/com.termux
drwxrwx--x      u:object_r:app_data_file:s0:c34,c257,c512,c768  4096    u0_a290 u0_a290         /data/data/com.termux/files     1727327332.602000000    10290   10290   771     files   files
drwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  4096    u0_a290 u0_a290         /data/data/com.termux/files/usr 1727327332.558000000    10290   10290   700     files/usr       usr
drwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  20480   u0_a290 u0_a290         /data/data/com.termux/files/usr/bin     1727333025.553000000    10290   10290   700     files/usr/bin   bin
-rwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  5246256 u0_a290 u0_a290         /data/data/com.termux/files/usr/bin/lld 1719452833.0    10290   10290   700     files/usr/bin/lld       lld
-rwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  11200   u0_a290 u0_a290         /data/data/com.termux/files/usr/bin/uuclient    1719567959.0    10290   10290   700     files/usr/bin/uuclient  uuclient
lrwxrwxrwx      u:object_r:app_data_file:s0:c34,c257,c512,c768  7       u0_a290 u0_a290 setarch /data/data/com.termux/files/usr/bin/i386        1727327575.302000000    10290   10290   777     files/usr/bin/i386      i386
-rwx------      u:object_r:app_data_file:s0:c34,c257,c512,c768  1457    u0_a290 u0_a290         /data/data/com.termux/files/usr/bin/ldns-config 1725529101.0    10290   10290   700     files/usr/bin/ldns-config       ldns-config
lrwxrwxrwx      u:object_r:app_data_file:s0:c34,c257,c512,c768  8       u0_a290 u0_a290 clang-18        /data/data/com.termux/files/usr/bin/x86_64-linux-android-g++    1727328465.498000000    10290   10290   777     files/usr/bin/x86_64-linux-android-g++  x86_64-linux-android-g++
lrwxrwxrwx      u:object_r:app_data_file:s0:c34,c257,c512,c768  9       u0_a290 u0_a290 coreutils       /data/data/com.termux/files/usr/bin/sleep       1727327570.714000000    10290   10290   777     files/usr/bin/sleep     sleep
...
```