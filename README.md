# OpenHIIT Background Service

This is a fork of the [flutter_background_service](https://github.com/ekasetiawans/flutter_background_service) package, originally created by [ekasetiawans](https://github.com/ekasetiawans). The original package provides a framework for running background services in Flutter applications.

## Changes Made

Currently, the following changes have been made to the original package to better suit the needs of [OpenHIIT](https://github.com/a-mabe/OpenHIIT):

- Removed autostart on boot for Android.
- Automatically stop the background service on app close for Android.

## Why Use OpenHIIT Background Service?

OpenHIIT Background Service offers functionality tailored specifically for the interval timer apps. If you're looking for a background service solution for your Flutter app, give OpenHIIT Background Service a try!

## Getting Started

To use OpenHIIT Background Service in your Flutter project, follow these steps:

1. Add the following to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     openhiit_background_service:
       git:
         url: https://github.com/a-mabe/openhiit_background_service.git
   ```

2. Run `flutter pub get` to install the package.

3. Import the package in your Dart code:

   ```dart
   import 'package:openhiit_background_service/openhiit_background_service.dart';
   ```

4. Follow the original [flutter_background_service documentation](https://pub.dev/packages/flutter_background_service) for additional usage instructions.

## Feedback and Contributions

If you have any feedback or would like to contribute to OpenHIIT Background Service, please feel free to open an issue or submit a pull request on [GitHub](https://github.com/a-mabe/openhiit_background_service).
