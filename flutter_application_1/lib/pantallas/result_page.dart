/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/product.dart';

class ResultPage extends StatelessWidget {
  final List<Apps> products;

  const ResultPage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF013e37);
    const bgColor = Color(0xFFffefb3);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Resultados", style: TextStyle(color: textColor)),
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(color: textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Producto más caro:", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(Product.obtenerMasCaro(products), style: const TextStyle(color: textColor, fontSize: 16)),
            
            const Text("Producto más barato:", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(Product.obtenerMasBarato(products), style: const TextStyle(color: textColor, fontSize: 16)),
            
            const Text("Producto con mayor cantidad:", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(Product.obtenerMayorCantidad(products), style: const TextStyle(color: textColor, fontSize: 16)),
            
            const Text("Producto con menor cantidad:", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(Product.obtenerMenorCantidad(products), style: const TextStyle(color: textColor, fontSize: 16)),
            
            const Text("Precio promedio:", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
            Text("\$${Product.obtenerPrecioPromedio(products)}", style: const TextStyle(color: textColor, fontSize: 16)),
          ],
        ),
      ),
    );
  }
} */
