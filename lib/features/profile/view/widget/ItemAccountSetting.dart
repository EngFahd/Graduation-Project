import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/features/profile/data/models/settingsModels.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemAccountSetting extends StatelessWidget {
  const ItemAccountSetting({
    super.key,
    required this.settingModel,
  });
  final SettingModel settingModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(settingModel.Imag),
        const SizedBox(width: 8),
        Text(
          settingModel.text,
          style: Styles.text24,
        ),
        const Spacer(),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.arrowRight,
                size: 24, color: Color(0xff104168)))
      ],
    );
  }
}
