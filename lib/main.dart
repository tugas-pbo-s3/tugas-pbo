import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'app/_index.dart';

void main() async {
  RM.env = Flavor.qa;
  await inits();
  Mocks.instance.init();
  runApp(
    DevicePreview(
      enabled: PlatformType.isLinux,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => const App(), //* Wrap your app
    ),
  );
}
