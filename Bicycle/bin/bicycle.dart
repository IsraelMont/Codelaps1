
class Bicycle {
  int cadence;      // Velocidad de pedaleo
  int _speed = 0;   // Velocidad actual (encapsulada) o Speed es una variable de instancia privada
  int get speed => _speed;  // Getter para acceder a la velocidad actual
  int gear;         // Marcha

  // Constructor de la clase Bicycle
  Bicycle(this.cadence, this.gear);

  // Método para aplicar freno
  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  // Método para aumentar la velocidad
  void speedUp(int increment) {
    _speed += increment;
  }

// Método para personalizar la salida al imprimir una instancia de Bicycle
@override
String toString() => 'Bicycle: $speed mph';
}

// Función principal donde se instancia un objeto Bicycle y se imprime
void main() {
  var bike = Bicycle(2, 1); // Crear una instancia de Bicycle con cadencia 2 y marcha 1
  print(bike);  // Imprimir la instancia de Bicycle
}