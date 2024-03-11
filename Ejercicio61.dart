/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 61:
Dado una cadena de números, devuelve todas las combinaciones de letras posibles 
que el número podría representar.
 
Aqui tienes un mapeo de dígitos a letras 
(como en los botones de un teléfono).
 
    const mapeo = [
      ' ', // 0
      '', // 1
      'abc', // 2
      'def', // 3
      'ghi', // 4
      'jkl', // 5
      'mno', // 6
      'pqrs', // 7
      'tuv', // 8
      'wxyz' // 9
    ];
 
Ejemplos:
combinacionesLetras("23")
 
Devuelve:
["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
 
*/

class Combination {
  var mapeo = [
    ' ', // 0
    '', // 1
    'abc', // 2
    'def', // 3
    'ghi', // 4
    'jkl', // 5
    'mno', // 6
    'pqrs', // 7
    'tuv', // 8
    'wxyz' // 9
  ];

  List<String> combinationOfLetters(String number) {
    if (number.length == 0) return [];

    List<String> result = [''];
    var numberToList = number.split('');

    for(String number in numberToList){
      for(int i = 0, long = result.length; i < long; i++){
        var previousElement = result.removeAt(0);

        int position = int.parse(number);
        var currentList = mapeo[position].split('');
        for(String letter in currentList){
          // print('$number , $result');
          result.add('${previousElement+letter}');
        }
      }
    }
    return result;
  }
}

void main() {
  Combination combination = Combination();
  print(combination.combinationOfLetters('23'));
}
