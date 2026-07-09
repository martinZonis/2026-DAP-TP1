import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/product.dart';
import 'package:flutter_application_1/pantallas/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Apps> applications = [
    Apps("App 1", "Description 1", "image1.png"),
    Apps("App 2", "Description 2", "image2.png"),
    Apps("App 3", "Description 3", "image3.png"),
  ];
  String message = "";



  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF013e37);
    const bgColor = Color(0xFFffefb3);

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //ESTE ES EL MAIN
            ListView.builder(
            itemCount: applications.length, // 1. Le decís cuántos elementos tiene tu lista
            itemBuilder: (context, index) { // 2. Dibujás cada fila usando su posición (index)
            final elemento = applications[index];
    
            return ListTile(
              leading: Image.network(
              elemento.image, // La URL de la imagen 
              width: 50, 
              height: 50, 
              fit: BoxFit.cover,
            ), // La imagen a la izquierda
          title: Text(elemento.name), // El título principal
          subtitle: Text(elemento.description), // La descripción abajo del título
          trailing: const Icon(Icons.arrow_forward_ios, size: 16), // Una flechita coqueta a la derecha
          onTap: () {
        // Acá vas a programar la navegación a la pantalla de detalle
          print("Tocaste: ${elemento.name}");
      },
    );
  },
)
          ],
        ),
      ),
    );
  }
}
