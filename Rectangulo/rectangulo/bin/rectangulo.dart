
//Esta clase define un punto cartesiano de coordenadas
class Point {     
  final int x;    // Coordenada x del punto
  final int y;    // Coordenada y del punto

  // Constructor de Point tomando los dos parametros
  const Point(this.x, this.y);
}

class Rectangle {
  Point origin;   // Origen del rectángulo, de tipo Point
  int width;      // Ancho del rectángulo
  int height;     // Altura del rectangulo

  // Constructor de Rectangle con parámetros opcionales con nombre
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  // Método para proporcionar una representación en cadena del rectángulo
  @override
  // Devuelve una cadena con información sobre el rectángulo
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

void main() { // Creación de instancias de Rectangle con diferentes combinaciones de parámetros y sus impresiones
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200)); // Rectángulo con origen en (10, 20) y dimensiones 100x200
  print(Rectangle(origin: const Point(10, 10)));  // Rectángulo con origen en (10, 10) y dimensiones predeterminadas (0x0)
  print(Rectangle(width: 200)); // Rectángulo con origen predeterminado (0,0) y ancho 200, altura predeterminada (0)
  print(Rectangle()); // Rectángulo con origen predeterminado (0,0) y dimensiones predeterminadas (0x0)
}

