import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/pantallas/home_page.dart';
import 'package:flutter_application_1/pantallas/login.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const Login()),
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
  ]
);
