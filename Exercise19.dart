/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 19:
Crea una función que simule el lanzamiento de dos dados.
 
Ejemplos:
dados();
 
*/

import 'dart:math';

class Dice {
  List<int> showDice() {
    final random = Random();
    final dado1 = random.nextInt(7);
    final dado2 = random.nextInt(7);
    return [dado1, dado2];
  }
}

void main(){
  Dice d = Dice();
  print(d.showDice());
}
