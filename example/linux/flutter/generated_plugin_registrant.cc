//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <plugin_development_learning/plugin_development_learning_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) plugin_development_learning_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PluginDevelopmentLearningPlugin");
  plugin_development_learning_plugin_register_with_registrar(plugin_development_learning_registrar);
}
