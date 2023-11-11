import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/alocator-path.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:flutter_application_1/core/utils/widgets/Bottom_NavigationBar.dart';
import 'package:flutter_application_1/features/EditeProfile/presntation/view/widget/Edite-Profile-Body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class EditeProfile extends StatelessWidget {
  const EditeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottom_NavigationBar(),
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
