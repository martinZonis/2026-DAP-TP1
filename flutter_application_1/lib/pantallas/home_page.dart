import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/product.dart';
import 'package:flutter_application_1/pantallas/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [];
  final TextEditingController nameAnswered = TextEditingController();
  final TextEditingController descAnswered = TextEditingController();
  final TextEditingController priceAnswered = TextEditingController();
  final TextEditingController stockAnswered = TextEditingController();
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
            const Text(
              "Ingrese un nuevo producto en el sistema",
              style: TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("Nombre del producto", style: TextStyle(color: textColor)),
            TextField(controller: nameAnswered, textAlign: TextAlign.center, style: const TextStyle(color: textColor)),
            const Text("Descripción", style: TextStyle(color: textColor)),
            TextField(controller: descAnswered, textAlign: TextAlign.center, style: const TextStyle(color: textColor)),
            const Text("Precio", style: TextStyle(color: textColor)),
            TextField(controller: priceAnswered, textAlign: TextAlign.center, style: const TextStyle(color: textColor)),
            const Text("Stock", style: TextStyle(color: textColor)),
            TextField(controller: stockAnswered, textAlign: TextAlign.center, style: const TextStyle(color: textColor)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: textColor),
              onPressed: () {
                setState(() {
                  if (nameAnswered.text.isNotEmpty &&
                      descAnswered.text.isNotEmpty &&
                      priceAnswered.text.isNotEmpty &&
                      stockAnswered.text.isNotEmpty) {
                    products.add(Product(
                      nameAnswered.text,
                      descAnswered.text,
                      double.tryParse(priceAnswered.text) ?? 0.0,
                      int.tryParse(stockAnswered.text) ?? 0,
                    ));
                    message = "Producto agregado exitosamente";
                  } else {
                    message = "Por favor, complete todos los campos";
                  }
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message, style: const TextStyle(color: bgColor)),
                    backgroundColor: textColor,
                    duration: const Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text("Submit", style: TextStyle(color: bgColor, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: textColor),
              onPressed: () {
                if (products.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(products: products)),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("La lista está vacía, agrega un producto primero", style: TextStyle(color: bgColor)),
                      backgroundColor: textColor,
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              },
              child: const Text("Ver Resultados", style: TextStyle(color: bgColor, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
