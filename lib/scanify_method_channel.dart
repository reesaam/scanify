import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scanify_platform_interface.dart';

/// An implementation of [ScanifyPlatform] that uses method channels.
class MethodChannelScanify extends ScanifyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scanify');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
