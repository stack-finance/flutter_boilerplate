# flutter_boilerplate

A new Flutter project. This is a scable directory structrue for Flutter projects.


## Steps to start project
1. Start the emulator on your machine. If you doesn't have one already created, [create one](https://developer.android.com/studio/run/managing-avds).
2. Go to root of the project and run `flutter pub get`
3. Click on the green play button at the toolbar of Android Studio.
4. Let the application boot and get installed into the emulator.

## Connect real device over Wi-Fi
1. Connect your device with laptop using USB and connect mobile with same WiFi to which your laptop is connect
2. Open CMD/Terminal
3. Check if device correctly connected using `adb devices`
4. Run `adb tcpip 5555`
5. Open your mobile `Settings` > `About Phone` > `Status` > `IP Address` (IP Address will change everytime you connect)
6. Run `adb connect <your_mobile_ip>` eg: - `adb connect 192.168.1.6`
7. Remove the USB cable.

## If by using above step you are not able to connect to device than try commands below

1. Run `adb kill-server`
2. Run `adb usb`
3. Run `adb tcpip 5555`
4. Run `adb connect <your_mobile_ip>:5555`

ce0657c677554cba71ec25a7a4084a7ce7e26a22