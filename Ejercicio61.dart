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

  List<String> combinationOfLetters(String number){
    if(number.length == 0) return [];

    List<String> result = [];

  for(int i = 0; i < number.length;i++){
    // print(number[i].runtimeType);
    // print(mapeo[int.parse(number[i])]);
    for(int k = 0; k < result.length; k++){
      var previousElement = result.last;
      for(int j = 0; j < mapeo[int.parse(number[i])].length; j++){
        // print(mapeo[int.parse(number[i])][j]);
        String letra = mapeo[int.parse(number[i])][j];
        result.add(previousElement+letra);
      }
    }
  }

    print(result);
    // print(int.parse(number).);
    return [];
  }
  
}

void main() {
  Combination combination = Combination();
  print(combination.combinationOfLetters('23'));
}
