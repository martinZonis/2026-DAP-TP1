import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/classes/product.dart';
//context.go('/home')

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF013e37);
    const bgColor = Color(0xFFffefb3);

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Text(
              "Si ya posee una cuenta, inicie sesión.",
              style: TextStyle(
                fontSize: 28.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: textColor,
                letterSpacing: 1.5, // Espaciado entre letras
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: emailInput,
              style: const TextStyle(color: textColor),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email, color: textColor),
                hintText: 'Ingrese su correo',
                hintStyle: TextStyle(color: textColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 2.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: TextField(
              controller: passwordInput,
              style: const TextStyle(color: textColor),
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Ingrese su contraseña',
                hintStyle: TextStyle(color: textColor),
                prefixIcon: Icon(Icons.password, color: textColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 2.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
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
                    } else{
                      bool isValid = User.users.any((u) => u.username == email && u.password == pass);
                      if (!isValid) {
                        message = 'Correo o contraseña incorrectos';
                      } else {
                        message = 'Inicio de sesión exitoso';
                        context.push('/home');
                      }
                    } 

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message, style: const TextStyle(color: bgColor)),
                        backgroundColor: textColor,
                        duration: const Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: textColor, // Color de fondo del botón
                    foregroundColor:
                        bgColor, // Color del texto e íconos internos
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
                  child: const Text('Confirmar', style: TextStyle(fontWeight: FontWeight.bold)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
