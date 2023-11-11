import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/alocator-path.dart';
import 'package:flutter_application_1/core/utils/service/assets.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/features/profile/view/widget/profile-body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

int current = 0;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
            print(current);
            if (current == 1) {
              GoRouter.of(context).push(AppRouter.kHome);
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(FontAwesomeIcons.user)),
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.notification_important)),
        ],
      ),
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: Styles.text32,
        ),
        centerTitle: true,
      ),
      body: const SafeArea(child: ProfileBodey()),
    );
  }
}
