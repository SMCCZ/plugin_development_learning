#import "PluginDevelopmentLearningPlugin.h"
#if __has_include(<plugin_development_learning/plugin_development_learning-Swift.h>)
#import <plugin_development_learning/plugin_development_learning-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_development_learning-Swift.h"
#endif

@implementation PluginDevelopmentLearningPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginDevelopmentLearningPlugin registerWithRegistrar:registrar];
}
@end
