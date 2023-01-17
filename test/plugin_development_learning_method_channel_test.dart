import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_development_learning/plugin_development_learning_method_channel.dart';

void main() {
  MethodChannelPluginDevelopmentLearning platform = MethodChannelPluginDevelopmentLearning();
  const MethodChannel channel = MethodChannel('plugin_development_learning');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
