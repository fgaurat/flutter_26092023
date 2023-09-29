import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_java_plugin_platform_interface.dart';

/// An implementation of [HelloJavaPluginPlatform] that uses method channels.
class MethodChannelHelloJavaPlugin extends HelloJavaPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello_java_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
