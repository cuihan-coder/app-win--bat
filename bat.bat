@echo off
set RandomNumber=%random%


echo 35575701094%RandomNumber%������ʼ--------

cd C:\Users\Admin\Desktop\platform-tools

echo ��ʼ����ҹ��--------
adb connect 127.0.0.1:62001

echo ��ʼ��rootȨ��--------
adb root

echo �޸�ҹ��imei--------

adb shell setprop phone.imei  35575701094%RandomNumber%

echo ��ʼ��װapk--------
adb install -r C:\Users\Admin\Desktop\aaaa.apk  

echo �ȴ���װ �ӳ�3��--------
timeout /T 2 /NOBREAK

echo ��װ��� ����apk--------
adb shell am start -n com.csjy.lockforelectricity/com.csjy.lockforelectricity.view.activity.GuideActivity 

echo �����ȴ�35�� �ӳ�35�� �رմ���--------
timeout /T 35 /NOBREAK

echo ������� ɾ��apk --------
adb shell pm uninstall -k com.csjy.lockforelectricity 

echo 35575701094%RandomNumber%��������--------

call C:\Users\Admin\Desktop\bat.bat
timeout /T 2 /NOBREAK
echo 
exit