@echo off
set RandomNumber=%random%


echo 35575701094%RandomNumber%启动开始--------

cd C:\Users\Admin\Desktop\platform-tools

echo 开始链接夜神--------
adb connect 127.0.0.1:62001

echo 初始化root权限--------
adb root

echo 修改夜神imei--------

adb shell setprop phone.imei  35575701094%RandomNumber%

echo 开始安装apk--------
adb install -r C:\Users\Admin\Desktop\aaaa.apk  

echo 等待安装 延迟3秒--------
timeout /T 2 /NOBREAK

echo 安装完成 启动apk--------
adb shell am start -n com.csjy.lockforelectricity/com.csjy.lockforelectricity.view.activity.GuideActivity 

echo 启动等待35秒 延迟35秒 关闭窗口--------
timeout /T 35 /NOBREAK

echo 启动完成 删除apk --------
adb shell pm uninstall -k com.csjy.lockforelectricity 

echo 35575701094%RandomNumber%启动结束--------

call C:\Users\Admin\Desktop\bat.bat
timeout /T 2 /NOBREAK
echo 
exit