import 'package:go_router/go_router.dart';
import '../screens/landing_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingScreen(),
    ),
  ],
);