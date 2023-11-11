import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingModel {
  final Icon iconin;
  final String text;

  SettingModel({required this.iconin, required this.text});
}

// ================>>> UI
class SettingsItems {
  static List<SettingModel> list = [
    SettingModel(
      text: "Notifications",
      iconin: const Icon(
        FontAwesomeIcons.bell,
        size: 24,
        color: Color(0xff104168),
      ),
    ),
    SettingModel(
      text: "Appearance",
      iconin: const Icon(
        FontAwesomeIcons.palette,
        size: 24,
        color: Color(0xff104168),
      ),
    ),
    SettingModel(
      text: "Help &Support",
      iconin: const Icon(
        FontAwesomeIcons.question,
        size: 24,
        color: Color(0xff104168),
      ),
    ),
    SettingModel(
      text: 'About',
      iconin: const Icon(
        FontAwesomeIcons.newspaper,
        size: 24,
        color: Color(0xff104168),
      ),
    ),
    SettingModel(
      text: 'Privacy',
      iconin: const Icon(
        FontAwesomeIcons.exclamation,
        size: 24,
        color: Color(0xff104168),
      ),
    ),
  ];
}
