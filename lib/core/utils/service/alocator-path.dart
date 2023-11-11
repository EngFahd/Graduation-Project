import 'package:flutter_application_1/features/EditeProfile/presntation/view/edite-profile.dart';
import 'package:flutter_application_1/features/home/presntation/view/home.dart';
import 'package:flutter_application_1/features/profile/view/profile.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHome = '/home';
  static const String kediteProfile = '/editePro';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: kediteProfile,
        builder: (context, state) => const EditeProfile(),
      ),
    ],
  );
}
