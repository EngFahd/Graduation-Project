import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/features/profile/data/models/settingsModels.dart';
import 'package:flutter_application_1/features/profile/view/widget/ItemAccountSetting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Section2Settings extends StatelessWidget {
  const Section2Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Accoun Settings",
            style: Styles.text32,
          ),
          // SizedBox(height: 15),
          SizedBox(
            height: 150,
            child: ListView.builder(
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: SettingsItems.list.length,
              itemBuilder: (context, index) {
                return ItemAccountSetting(
                  settingModel: SettingsItems.list[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
