# MedCore Test

A new Flutter project.

## Getting Started

<<<<<<< Updated upstream
FlutterFlow projects are built to run on the Flutter _stable_ release.
=======
Before starting, make sure you have the following installed:

1. **Flutter SDK**: If you don't have Flutter installed, visit [Flutter's official website](https://flutter.dev/docs/get-started/install) for installation guidelines specific to your OS.
2. **Dart SDK**: Dart comes bundled with the Flutter SDK, so you don't need to install it separately.
3. **Android Studio or VS Code**: These are the recommended IDEs for Flutter development. You can choose either, based on your preference.
4. **A Simulator or Physical Device**: For iOS development, you'll need Xcode with an iOS simulator. For Android, you'll need Android Studio with the Android Emulator or a physical device connected to your computer.

## Steps to Run the Project

1. **Clone/Download the Project**: 
   ```bash
   git clone https://github.com/Xekhai/MedCoreTest.git
   cd [MedCoreTest]
   ```

   If you've downloaded a zip of the project, unzip it and navigate to the project directory in your terminal.

2. **Fetch Dependencies**: 
   In the root of your project directory, run:
   ```bash
   flutter pub get
   ```

   This command fetches all the dependencies mentioned in the `pubspec.yaml` file.

3. **Choose a Device**: 
   - If you're using a physical device, connect it to your computer and make sure USB debugging is enabled.
   - Launch the simulator/emulator if you're not using a physical device. 

   To check the list of available devices, run:
   ```bash
   flutter devices
   ```

4. **Run the Project**: 
   Execute the following command in the terminal:
   ```bash
   flutter run
   ```

   If you have multiple devices connected (e.g., an Android device and an iOS simulator), you can specify the device with:
   ```bash
   flutter run -d [DEVICE_ID]
   ```

   The `DEVICE_ID` can be found from the list when you run `flutter devices`.

5. **Hot Reload**: Once your app starts, Flutter has a hot reload feature. If you make changes to the source code, you can press `r` in the terminal where the app is running to see those changes instantly in the running app.
>>>>>>> Stashed changes
