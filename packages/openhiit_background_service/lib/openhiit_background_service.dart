library openhiit_background_service;

import 'dart:async';

import 'package:openhiit_background_service_platform_interface/openhiit_background_service_platform_interface.dart';

export 'package:openhiit_background_service_platform_interface/openhiit_background_service_platform_interface.dart'
    show IosConfiguration, AndroidConfiguration, ServiceInstance;

class OpenhiitBackgroundService implements Observable {
  OpenhiitBackgroundServicePlatform get _platform =>
      OpenhiitBackgroundServicePlatform.instance;

  /// configure the background service handler
  /// it's highly recommended to call this method in main() method
  Future<bool> configure({
    required IosConfiguration iosConfiguration,
    required AndroidConfiguration androidConfiguration,
  }) =>
      _platform.configure(
        iosConfiguration: iosConfiguration,
        androidConfiguration: androidConfiguration,
      );

  static OpenhiitBackgroundService _instance =
      OpenhiitBackgroundService._internal();

  OpenhiitBackgroundService._internal();

  factory OpenhiitBackgroundService() => _instance;

  /// Starts the background service.
  Future<bool> startService() => _platform.start();

  /// Whether the service is running
  Future<bool> isRunning() => _platform.isServiceRunning();

  @override
  void invoke(String method, [Map<String, dynamic>? arg]) =>
      _platform.invoke(method, arg);

  @override
  Stream<Map<String, dynamic>?> on(String method) => _platform.on(method);
}
