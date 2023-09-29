
import 'hello_java_plugin_platform_interface.dart';

class HelloJavaPlugin {
  Future<String?> getPlatformVersion() {
    return HelloJavaPluginPlatform.instance.getPlatformVersion();
  }
}
