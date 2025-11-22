import 'package:flutter_test/flutter_test.dart';
import 'package:scanify/scanify.dart';
import 'package:scanify/scanify_platform_interface.dart';
import 'package:scanify/scanify_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockScanifyPlatform
    with MockPlatformInterfaceMixin
    implements ScanifyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  // final ScanifyPlatform initialPlatform = ScanifyPlatform.instance;
  //
  // test('$MethodChannelScanify is the default instance', () {
  //   expect(initialPlatform, isInstanceOf<MethodChannelScanify>());
  // });
  //
  // test('getPlatformVersion', () async {
  //   Scanify scanifyPlugin = Scanify();
  //   MockScanifyPlatform fakePlatform = MockScanifyPlatform();
  //   ScanifyPlatform.instance = fakePlatform;
  //
  //   expect(await scanifyPlugin.getPlatformVersion(), '42');
  // });
}
