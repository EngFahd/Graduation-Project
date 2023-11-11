import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custem-button.dart';
import 'package:flutter_application_1/features/EditeProfile/presntation/view/widget/Text-failed-profile.dart';

class EditeProfileBody extends StatelessWidget {
  const EditeProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Divider(),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(555),
            child: Image.asset(
              'assets/gojo.jpg',
              height: 100,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Fahd Mahmoud",
          style: Styles.text24.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          'fahd@gmail.com',
          style: Styles.text16.copyWith(fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
          child: Column(
            children: [
              const TextFeildProfile(hint: "Full Name"),
              const SizedBox(height: 10),
              const TextFeildProfile(hint: "Country"),
              const SizedBox(height: 10),
              const TextFeildProfile(hint: "Gender"),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  TextFeildProfile(
                    hint: "Full Name",
                    wideth: 150,
                  ),
                  Spacer(),
                  TextFeildProfile(
                    hint: "Full Name",
                    wideth: 150,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustemButton()
            ],
          ),
        )
      ],
    );
  }
}
