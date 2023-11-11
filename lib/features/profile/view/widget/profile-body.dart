import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile/view/widget/Section1Settings.dart';
import 'package:flutter_application_1/features/profile/view/widget/Section2Settings.dart';

class ProfileBodey extends StatelessWidget {
  const ProfileBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          height: 1,
        ),
        Section1Settings(),
        Divider(),
        Section2Settings(),
      ],
    );
  }
}
