import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hello_java_plugin_method_channel.dart';

abstract class HelloJavaPluginPlatform extends PlatformInterface {
  /// Constructs a HelloJavaPluginPlatform.
  HelloJavaPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelloJavaPluginPlatform _instance = MethodChannelHelloJavaPlugin();

  /// The default instance of [HelloJavaPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelloJavaPlugin].
  static HelloJavaPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelloJavaPluginPlatform] when
  /// they register themselves.
  static set instance(HelloJavaPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
