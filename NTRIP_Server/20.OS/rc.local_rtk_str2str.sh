#! /bin/sh

# rc.local_rtk_str2str.sh
# str2strを実行するスクリプト。
# ラズパイOS起動時にこのスクリプトをrc.localに指定して自動的に実行しています。
#　 （補足）rc.local編集コマンド：sudo nano /etc/rc.local
#
#（補足）str2strパラメータ内の"ttyF9P"は、ラズパイに挿した基準局ZED-F9Pのシリアルポートです。
#        Githubにもう一つ公開している　99-ublox.rules　を予め設定したので、"ttyF9P"にF9P開発ボードがいつも固定でセットされます。

# str2strを実行できるディレクトリに移動
cd /home/pi/RTKLIB/app/str2str/gcc

# str2strをパラメータ付きで実行
./str2str -in serial://ttyF9P:230400#rtcm3 -out ntrips://:＜ここにパスワード＞@rtk2go.com:2101/YUKKURI-KIKUKA-1#rtcm3 -msg "1005(10),1077(1),1087(1),1097(1),1127(1),1230(1)"
