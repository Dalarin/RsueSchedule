import 'dart:convert';

import 'package:rsue_schedule/models/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {

  void saveSettings(Settings settings) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('settings', jsonEncode(settings.toMap()));
  }

  Future<Settings?> readSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final settings = prefs.getString('settings');
    if (settings != null) {
      return Settings.fromMap(jsonDecode(settings));
    }
    return null;
  }
}
