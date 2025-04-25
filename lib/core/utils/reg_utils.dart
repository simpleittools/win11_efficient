import 'dart:io';

import 'package:process_run/process_run.dart';

class RegUtils {
  static Future<bool> disableSpotlight() async {
    if (!Platform.isWindows) {
      print('you are not on Windows');
      return false;
    }

    try {
      var shell = Shell();

      // Create the registry command
      final command = 'reg add "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\DesktopSpotlight\\Settings" /v EnabledState /t REG_DWORD /d 0 /f';

      await shell.run(command);
      return true;
    } catch (e) {
      print('Error modifying registry: $e');
      return false;
    }

  }
}