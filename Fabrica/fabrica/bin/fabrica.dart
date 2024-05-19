
// Importar la biblioteca dart:math para usar pi y pow
import 'dart:math';

/*
abstract class Shape {
  num get area;
}
*/

abstract class Shape {            // Definir una clase abstracta Shape
  factory Shape(String type) {    // Método factory para crear instancias de formas geométricas
    if (type == 'circle') return Circle(2); // Si el tipo es 'circle', crea un objeto Circle con radio 2
    if (type == 'square') return Square(2); // Si el tipo es 'square', crea un objeto Square con lado 2
    throw 'Can\'t create $type.'; // Lanza una excepción si el tipo no es válido
  }
  num get area; // Getter abstracto para obtener el área de la forma
}

// Definir la clase Circle que implementa la interfaz Shape
class Circle implements Shape { 
  final num radius;   // Definir una variable final para el radio del círculo
  Circle(this.radius); // Constructor de Circle que toma el radio como parámetro
  @override // Anotación para indicar que se está sobrescribiendo un método de la interfaz o superclase
  num get area => pi * pow(radius, 2);  // Calcular el área del círculo usando la fórmula pi * radio^2
}

// Definir la clase CircleMock que implementa la interfaz Circle
class CircleMock implements Circle {
  // Variables para el área y el radio del círculo
  @override
  late num area;  // La anotación "late" indica que el valor de esta variable se inicializará más tarde
  @override
  late num radius;  // La anotación "late" indica que el valor de esta variable se inicializará más tarde
}

// Definir la clase Square que implementa la interfaz Shape
class Square implements Shape { 
  final num side; // Definir una variable final para el lado del cuadrado
  Square(this.side);  // Constructor de Square que toma el lado como parámetro
  @override // Anotación para indicar que se está sobrescribiendo un método de la interfaz o superclase
  num get area => pow(side, 2); // Calcular el área del cuadrado usando la fórmula lado^2
}

/*    Funcion ShapeFactory con parametros de tipo String llamado type
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2); // Si el tipo es 'circle', crea un objeto Circle con radio 2
  if (type == 'square') return Square(2); // Si el tipo es 'square', crea un objeto Square con lado 2
  throw 'Can\'t create $type.';   // Lanza una excepción si el tipo no es válido
}
*/

// Función principal
void main() {
  /*Ej 1 - Fabrica
- Esta sección muestra cómo se pueden crear instancias directamente de las clases Circle y Square.
  
  final circle = Circle(2);
  final square = Square(2);

  */

  /*
    Opcion 1 - Fabrica
Esta sección muestra cómo se podrían crear instancias utilizando un método de fábrica llamado shapeFactory.
    
    final circle = shapeFactory('circle');
    final square = shapeFactory('square');
  */

  //Opcion 2
  final circle = Shape('circle'); // Crear un círculo usando el factory method con el tipo 'circle'
  final square = Shape('square'); // Crear un cuadrado usando el factory method con el tipo 'square'
  print(circle.area); // Imprimir el área del círculo
  print(square.area); // Imprimir el área del cuadrado
}