class Product {
  String name;
  String description;
  double price;
  int stock;

  Product(this.name, this.description, this.price, this.stock);

  static String obtenerMasCaro(List<Product> lista) {
    Product masCaro = lista.first;
    
    for (Product producto in lista) {
      if (producto.price > masCaro.price) {
        masCaro = producto;
      }
    }
    
    return "${masCaro.name} - ${masCaro.description}";
  }

  static String obtenerMasBarato(List<Product> lista) {
    Product masBarato = lista.first;
    
    for (Product producto in lista) {
      if (producto.price < masBarato.price) {
        masBarato = producto;
      }
    }
    
    return "${masBarato.name} - ${masBarato.description}";
  }

  static String obtenerMayorCantidad(List<Product> lista) {
    Product mayorCantidad = lista.first;
    
    for (Product producto in lista) {
      if (producto.stock > mayorCantidad.stock) {
        mayorCantidad = producto;
      }
    }
    
    return "${mayorCantidad.name} - ${mayorCantidad.description}";
  }

  static String obtenerMenorCantidad(List<Product> lista) {
    Product menorCantidad = lista.first;
    
    for (Product producto in lista) {
      if (producto.stock < menorCantidad.stock) {
        menorCantidad = producto;
      }
    }
    
    return "${menorCantidad.name} - ${menorCantidad.description}";
  }

  static String obtenerPrecioPromedio(List<Product> lista) {
    double sumaTotal = 0;
    
    for (Product producto in lista) {
      sumaTotal = sumaTotal + producto.price;
    }
    
    double promedio = sumaTotal / lista.length;
    return promedio.toStringAsFixed(2);
  }
}