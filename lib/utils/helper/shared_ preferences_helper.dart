import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SharedHelper  {

  Future<void> setTheme(String theme) async {
    SharedPreferences shr= await SharedPreferences.getInstance();
    shr.setString("theme", theme);
  }
  Future<String> getTheme()
  async {
    SharedPreferences shr= await SharedPreferences.getInstance();
    String name = await shr.getString("theme")??"system";
    return name;
  }

}