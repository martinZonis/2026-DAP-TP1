import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//context.go('/home')

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  static const String mail = 'correo@gmail.com';
  static const String clave = 'Clave';
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Text(
              "Si ya posee una cuenta, inicie sesión.",
              style: TextStyle(
                fontSize: 28.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
                letterSpacing: 1.5, // Espaciado entre letras
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),

            child: TextField(
              controller: emailInput,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Ingrese su correo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: passwordInput,
              decoration: InputDecoration(
                hintText: 'Ingrese su contraseña',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    String email = emailInput.text;
                    String pass = passwordInput.text;
                    String message;

                    if (email.isEmpty || pass.isEmpty) {
                      message = 'Ingrese su mail y contraseña';
                    } else if (email != mail || pass != clave) {
                      message = 'Correo o contraseña incorrectos';
                    } else {
                      message = 'Inicio de sesión exitoso';
                      context.push('/home');
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.brown,
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown, // Color de fondo del botón
                    foregroundColor:
                        Colors.white, // Color del texto e íconos internos
                    minimumSize: const Size(
                      200,
                      50,
                    ), // Ancho máximo posible y alto de 50
                    elevation: 5, // Sombra bajo el botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ), // Bordes redondeados del botón
                    ),
                  ),
                  child: Text('Confirmar'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
