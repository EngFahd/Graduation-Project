import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/alocator-path.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/features/EditeProfile/presntation/view/widget/Edite-Profile-Body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class EditeProfile extends StatefulWidget {
  const EditeProfile({super.key});

  @override
  State<EditeProfile> createState() => _EditeProfileState();
}

class _EditeProfileState extends State<EditeProfile> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          current = index;
          print(current);
          if (current == 1) {
            GoRouter.of(context).push(AppRouter.kHome);
          }
          if (current == 0) {
            GoRouter.of(context).push('/');
          }
          setState(() {});
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
      body: const SafeArea(child: EditeProfileBody()),
    );
  }
}
