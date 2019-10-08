问题1：
命令行输入：adb connect 172.16.4.37:5555 (:5555可省略）
    提示：unable to connect to 172.16.4.37:5555
    解决办法：
    1）手机与PC相连，执行以下命令：adb tcpip 5555
      成功提示：restarting in TCP mode port 5555
      如果手机没有和PC连接，直接使用以上命令会提示 error:device not found
      然后断开USB
    2）接着执行adb connect 172.16.4.37:5555，这时候应该就能连接成功了
      成功提示：connected to 172.16.4.37:5555
//wireless连接真机
adb connect 10.11.61.17:5555
//拉取数据库
adb -s 192.168.56.101:5555 pull /data/data/com.ele.baidu.feige/databases /Users/iwm/Downloads
adb -s 10.11.61.8:5555 pull /data/data/com.ele.baidu.feige/databases /Users/iwm/Downloads
//截屏
 adb shell screencap -p /sdcard/screen.png
 adb pull /sdcard/screen.png /Users/iwm/Downloads/screen.png
//指定设备安装
adb -s emulator-5554 install ebook.apk
//指定设备push
adb -s 127.0.0.1:62001 push charles-ssl-proxying-certificate.pem /sdcard/
将文件从android手机拉到电脑上
adb pull /storage/emulated/legacy/xfplay/ /Users/huiweizhao/Downloads
重启adb
adb kill-server
adb start-server
查看apk信息：包名，启动activity
aapt dump badging 包

查看最上层activity
adb -s 10.11.77.142:5555 shell dumpsys activity | grep "mFocusedActivity"
adb shell dumpsys activity | grep "mFoc"
启动monkey
adb shell monkey -p com.tencent.mm/.plugin.account.ui.LoginPasswordUI -s 500 -v 10000
停止monkey
ps | grep monkey
kill -9 进程号

启动一个包
adb shell am start -n com.tencent.mm/com.tencent.mm.ui.LauncherUI
//adb往真机发文本
adb -s 10.11.61.12:5555 shell input text 6946866080159
adb模拟点击事件(事件码：adb 点击事件 keyeventcode.note)
adb shell input keyevent 3
adb模拟touch屏幕事件
adb shell input tap 615 830
adb模拟滑动事件
adb shell input swipe 250 250 300 300

夜神模拟器连接
adb connect 127.0.0.1:62001
因为版本没对上导致:adb server version (32) doesn't match this client (39); killing...
网易mumu
 adb connect 127.0.0.1:7555