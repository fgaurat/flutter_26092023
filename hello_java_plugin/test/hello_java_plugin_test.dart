import 'package:flutter_test/flutter_test.dart';
import 'package:hello_java_plugin/hello_java_plugin.dart';
import 'package:hello_java_plugin/hello_java_plugin_platform_interface.dart';
import 'package:hello_java_plugin/hello_java_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHelloJavaPluginPlatform
    with MockPlatformInterfaceMixin
    implements HelloJavaPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HelloJavaPluginPlatform initialPlatform = HelloJavaPluginPlatform.instance;

  test('$MethodChannelHelloJavaPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHelloJavaPlugin>());
  });

  test('getPlatformVersion', () async {
    HelloJavaPlugin helloJavaPlugin = HelloJavaPlugin();
    MockHelloJavaPluginPlatform fakePlatform = MockHelloJavaPluginPlatform();
    HelloJavaPluginPlatform.instance = fakePlatform;

    expect(await helloJavaPlugin.getPlatformVersion(), '42');
  });
}
