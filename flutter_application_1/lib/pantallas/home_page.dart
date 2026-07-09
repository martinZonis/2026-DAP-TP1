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
    Apps("Netflix", "La aplicación de streaming más popular del país", "https://th.bing.com/th?id=OIF.HMNXOKKwX%2fQ993jKhHpcvQ&r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),
    Apps("Spotify", "La plataforma de música en streaming más utilizada", "https://th.bing.com/th/id/R.3587f8e9df02e2990b93afb9cd6d2323?rik=UIGbn9QywKVSAA&pid=ImgRaw&r=0"),
    Apps("Instagram", "La red social de fotos y videos más popular", "https://cdn.mos.cms.futurecdn.net/6dDoc8GV9fYUPExgLYPqqT.jpg"),
    Apps("Twitter", "La plataforma de microblogging más utilizada", "https://tse4.mm.bing.net/th/id/OIP.jY15T_gnyLfYjqonIjm6wQHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),
    Apps("Facebook", "La red social más grande del mundo", "https://tse1.mm.bing.net/th/id/OIP.AY1JxaizEyMJgHrVV525JwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),
    Apps("TikTok", "La aplicación de videos cortos más popular del momento", "https://play-lh.googleusercontent.com/LdBITldj-tJxqLm-CsWSbnt4BMo2gk53cgM7mWIL-zn44m1ywLyQgxRsHKqp8r0qceXs"),
    Apps("WhatsApp", "La aplicación de mensajería instantánea más utilizada", "https://static.vecteezy.com/system/resources/previews/014/414/681/original/whatsapp-square-logo-on-transparent-background-free-vector.jpg"),
    Apps("YouTube", "El sitio de video más popular del mundo", "https://th.bing.com/th?id=OIF.4nxE5z%2bSOix6qo1AAZDXsg&r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),
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
