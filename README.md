# Laba9_Proc
Realization of **ps ax** linux command:
```
[root@localhost proc_]# ./script.sh
PID TTY STAT TIME COMMAND
1    0    S    5    /usr/lib/systemd/systemd--switched-root--system--deserialize17
718    0    S    0    /usr/lib/systemd/systemd-journald
757    0    S    1    /usr/lib/systemd/systemd-udevd
893    0    S    0    /usr/bin/rpcbind-w-f
900    0    S    0    /sbin/auditd
902    0    S    0    /usr/sbin/sedispatch
925    0    S    0    /usr/sbin/mcelog--ignorenodev--daemon--foreground
926    0    S    0    /usr/sbin/alsactl-s-n19-c-EALSA_CONFIG_PATH=/etc/alsa/alsactl.conf--initfile=/lib/alsa/init/00mainrdaemon
927    0    S    0    /usr/sbin/ModemManager
928    0    S    1    /usr/lib/polkit-1/polkitd--no-debug
930    0    S    0    /usr/sbin/chronyd
```

To launch `chmod +x script.sh и ./script.sh`
