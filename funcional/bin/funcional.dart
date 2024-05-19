
// Definición de la función scream que toma un entero y devuelve una cadena que contiene 'A', 'a' 
//repetida la cantidad de veces del entero y 'h!' al final.
String scream(int length) => "A${'a' * length}h!";

void main() {
  //Ejemplo codigo imperativo (no de estilo funcional)
  // Lista de valores para iterar.
  //final values = [1, 2, 3, 5, 10, 50];

  // Iteración sobre cada valor de la lista values.
  //for(var length in values){
    //print(scream(length));  // Se llama a la función scream con el valor actual de length y se imprime el resultado.
  
  //Convirtiendo imperativo a funcional
  //final values = [1, 2, 3, 5, 10, 50];
  //values.map(scream).forEach(print);  // Se utiliza map para aplicar la función scream a cada elemento de la lista values,
                  // y luego forEach para imprimir cada resultado.

  //funciones iterables
  final values = [1, 2, 3, 5, 10, 50];
  // Se omite el primer valor, se toman los siguientes 3 valores y se aplica la función scream a cada uno,
  // y luego se imprime cada resultado.
  values.skip(1).take(3).map(scream).forEach(print);
  }


  

