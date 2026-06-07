import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/pantallas/home_page.dart';
import 'package:flutter_application_1/pantallas/login.dart';
import 'package:flutter_application_1/pantallas/result_page.dart';
import 'package:flutter_application_1/classes/product.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const Login()),
    GoRoute(path: '/home', builder: (context, state) =>  HomePage()),
    GoRoute(
      path: '/result', 
      builder: (context, state) {
        final productsList = state.extra as List<Product>? ?? [];
        return ResultPage(products: productsList);
      }
    ),
  ]
);
