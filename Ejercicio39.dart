/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 39:
Dado un número crea una función que genere todas las combinaciones
de parentesis válidas.
 
Ejemplos:
combinacionesParentesis(3);
 
Devuelve:
[
    "((()))",
    "(()())",
    "(())()",
    "()(())",
    "()()()"
]
*/

class Generator {
   generateCombinations(int number){

    //declare result variable
    dynamic results =  [];

    // Check if is a valid number
    if(number < 1) return [];

    // execute recursive fumction to generate ()
    generateParenthesis('', number, number, results);

    // return result
    return results;
  }
  int recursiveExecutionsCount = 0;
  // revursive function
    generateParenthesis(dynamic combination, dynamic opens, dynamic closed, dynamic results){

    // if there isn't open pharentesis even closed, add combination to results
    if(opens == 0 && closed == 0){
      results.add(combination);
      return true;
    } 
    //if there are available opened pharentesis, add one to combination
    // and the recursion  continues
    if(opens > 0){
      generateParenthesis('${combination}(', opens - 1, closed, results);
    }

    //if there are available closed pharentesis yet, and there are at least one opended
    // pharentesis to close, add combination and continue
    if(closed > 0 && opens < closed){
      generateParenthesis('${combination})', opens, closed-1, results);
    }

    recursiveExecutionsCount++;
    // print('ejecution ${recursiveExecutionsCount} combination ${combination} results ${results}');
  }

}

void main(){
  Generator generator = Generator();
  print(generator.generateCombinations(3));
}