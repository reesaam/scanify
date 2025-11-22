import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scanify_method_channel.dart';

abstract class ScanifyPlatform extends PlatformInterface {
  /// Constructs a ScanifyPlatform.
  ScanifyPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScanifyPlatform _instance = MethodChannelScanify();

  /// The default instance of [ScanifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelScanify].
  static ScanifyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScanifyPlatform] when
  /// they register themselves.
  static set instance(ScanifyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
