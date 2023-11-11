import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingModel {
  final String Imag;
  final String text;

  SettingModel({required this.Imag, required this.text});
}

// ================>>> UI
class SettingsItems {
  static List<SettingModel> list = [
    SettingModel(text: "Notifications", Imag: 'assets/Vector.png'),
    SettingModel(text: "Appearance", Imag: "assets/Frame 326.png"),
    SettingModel(text: "Help &Support", Imag: 'assets/qu.png'),
    SettingModel(text: 'About', Imag: 'assets/ph_note-light.png'),
    SettingModel(text: 'Privacy', Imag: 'assets/qu!.png'),
    SettingModel(text: 'Privacy', Imag: 'assets/qu!.png'),
    SettingModel(text: 'Privacy', Imag: 'assets/qu!.png'),
  ];
}
