import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/classes/product.dart';
import 'package:flutter_application_1/pantallas/app_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Apps> applications = [
    Apps("App 1", "Description 1", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMDNfdGWROrcANcGEOe9KxlQC8c6-ZRRjMWDvtv5hM7g&s=10"),
    Apps("App 2", "Description 2", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMDNfdGWROrcANcGEOe9KxlQC8c6-ZRRjMWDvtv5hM7g&s=10"),
    Apps("App 3", "Description 3", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMDNfdGWROrcANcGEOe9KxlQC8c6-ZRRjMWDvtv5hM7g&s=10"),
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
            Expanded(
              child: ListView.builder(
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
          title: Text(
                 elemento.name,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                 overflow: TextOverflow.ellipsis, // Si pasa las 3 líneas, mete el "..."
                  style: TextStyle(
                    fontSize: 16.0,                  // Tamaño de la letra
                    fontWeight: FontWeight.w500,     // Grosor (medio/semi-negrita)
                    color: textColor,          // Color del texto
                    letterSpacing: 0.5,              // Espacio entre letras
                  ),
                ),
          subtitle: Text(elemento.description, style: TextStyle(color: Colors.black)), // La descripción abajo del título
          trailing: const Icon(Icons.arrow_forward_ios, size: 16), // Una flechita coqueta a la derecha
          onTap: () {
        // Acá vas a programar la navegación a la pantalla de detalle
          context.push('/detalle', extra: elemento);
      },
    );
  },
))
          ],
        ),
      ),
    );
  }
}
