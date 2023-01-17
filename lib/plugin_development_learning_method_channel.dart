import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_development_learning_platform_interface.dart';

/// An implementation of [PluginDevelopmentLearningPlatform] that uses method channels.
class MethodChannelPluginDevelopmentLearning extends PluginDevelopmentLearningPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_development_learning');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
