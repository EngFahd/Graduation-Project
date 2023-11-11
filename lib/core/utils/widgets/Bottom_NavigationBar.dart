import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/alocator-path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Bottom_NavigationBar extends StatefulWidget {
  const Bottom_NavigationBar({super.key});

  @override
  State<Bottom_NavigationBar> createState() => _Bottom_NavigationBarState();
}

int current = 0;

class _Bottom_NavigationBarState extends State<Bottom_NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: const Color(0xFF104168),
        primaryColor: Colors.white,
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(bodySmall: const TextStyle(color: Colors.grey)),
      ),
      child: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
            print(current);
            if (current == 0) {
              GoRouter.of(context).push(AppRouter.kHome);
            }

            if (current == 2) {
              GoRouter.of(context).push('/');
            }
          });
        },
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: "NOtifications", icon: Icon(Icons.notification_important)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(FontAwesomeIcons.user)),
        ],
      ),
    );
  }
}
