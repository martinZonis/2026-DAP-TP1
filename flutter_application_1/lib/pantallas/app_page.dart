import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/product.dart';

class AppPage extends StatelessWidget {
  final Apps application;

  const AppPage({super.key, required this.application});

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF013e37);
    const bgColor = Color(0xFFffefb3);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Detalle del producto", style: TextStyle(color: textColor)),
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(color: textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(application.image, width: 200, height: 200),
            Text(application.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(application.description),
          ],
        ),
      ),
    );
  }
} 