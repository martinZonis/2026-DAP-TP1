import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/pantallas/home_page.dart';
import 'package:flutter_application_1/pantallas/login.dart';
//import 'package:flutter_application_1/pantallas/result_page.dart';
import 'package:flutter_application_1/classes/product.dart';
import 'package:flutter_application_1/pantallas/app_page.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login', 
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/home', 
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/detalle',
      builder: (context, state) {
          final productoSeleccionado = state.extra as Apps;
        return AppPage(application: productoSeleccionado);
      },
    ),
  ],
);