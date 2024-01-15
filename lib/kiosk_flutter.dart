import 'dart:async';

import 'package:flutter/services.dart';

class KioskFlutter {
  static const MethodChannel _channel = const MethodChannel('kiosk_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get onStartScreenPinning async {
    final bool success = await _channel.invokeMethod('onStartScreenPinning');
    return success;
  }

  static Future<bool> get onStopScreenPinning async {
    final bool success = await _channel.invokeMethod('onStopScreenPinning');
    return success;
  }
}
