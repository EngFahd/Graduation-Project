import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/alocator-path.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/features/profile/view/widget/Custem-Button.dart';
import 'package:flutter_application_1/features/profile/view/widget/StudentInfoItem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Section1Settings extends StatelessWidget {
  const Section1Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Divider(),
          // const SizedBox(height: 24),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/gojo.jpg",
                  height: 72,
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fahd Mahmoud",
                    style: Styles.text24,
                  ),
                  Text(
                    "fahd mahmoud",
                    style: Styles.text16,
                    // textAlign: TextAlign.start,
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 18),
          Text(
            'College Student',
            style: Styles.text24
                .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              StudentInfoItem(
                  text: 'Mansoura University',
                  iconin: Icon(
                    FontAwesomeIcons.building,
                    color: Color(0xff104168),
                    size: 20,
                  )),
              Spacer(),
              StudentInfoItem(
                text: 'Mansoura',
                iconin: Icon(
                  FontAwesomeIcons.locationDot,
                  color: Color(0xff104168),
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const StudentInfoItem(
              text: "Fahd@gmail.com",
              iconin: Icon(
                FontAwesomeIcons.envelope,
                color: Color(
                  0xff104168,
                ),
                size: 20,
              )),
          const SizedBox(height: 20),
          CustemButton(
            height: 50,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kediteProfile);
            },
          ),
        ],
      ),
    );
  }
}
