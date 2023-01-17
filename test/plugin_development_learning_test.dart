import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_development_learning/plugin_development_learning.dart';
import 'package:plugin_development_learning/plugin_development_learning_platform_interface.dart';
import 'package:plugin_development_learning/plugin_development_learning_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginDevelopmentLearningPlatform 
    with MockPlatformInterfaceMixin
    implements PluginDevelopmentLearningPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginDevelopmentLearningPlatform initialPlatform = PluginDevelopmentLearningPlatform.instance;

  test('$MethodChannelPluginDevelopmentLearning is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginDevelopmentLearning>());
  });

  test('getPlatformVersion', () async {
    PluginDevelopmentLearning pluginDevelopmentLearningPlugin = PluginDevelopmentLearning();
    MockPluginDevelopmentLearningPlatform fakePlatform = MockPluginDevelopmentLearningPlatform();
    PluginDevelopmentLearningPlatform.instance = fakePlatform;
  
    expect(await pluginDevelopmentLearningPlugin.getPlatformVersion(), '42');
  });
}
