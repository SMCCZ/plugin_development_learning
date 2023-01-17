
import 'plugin_development_learning_platform_interface.dart';

class PluginDevelopmentLearning {
  Future<String?> getPlatformVersion() {
    return PluginDevelopmentLearningPlatform.instance.getPlatformVersion();
  }
}
