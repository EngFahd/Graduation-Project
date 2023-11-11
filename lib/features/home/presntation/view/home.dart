import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/Bottom_NavigationBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: Bottom_NavigationBar(),
    );
  }
}
