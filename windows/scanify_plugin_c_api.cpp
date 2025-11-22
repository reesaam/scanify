#include "include/scanify/scanify_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "scanify_plugin.h"

void ScanifyPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  scanify::ScanifyPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
