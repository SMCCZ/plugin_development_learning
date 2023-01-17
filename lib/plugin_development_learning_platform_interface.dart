import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_development_learning_method_channel.dart';

abstract class PluginDevelopmentLearningPlatform extends PlatformInterface {
  /// Constructs a PluginDevelopmentLearningPlatform.
  PluginDevelopmentLearningPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginDevelopmentLearningPlatform _instance = MethodChannelPluginDevelopmentLearning();

  /// The default instance of [PluginDevelopmentLearningPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginDevelopmentLearning].
  static PluginDevelopmentLearningPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginDevelopmentLearningPlatform] when
  /// they register themselves.
  static set instance(PluginDevelopmentLearningPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
