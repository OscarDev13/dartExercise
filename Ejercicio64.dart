/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 64:
Crea un programa que compruebe si los paréntesis, llaves y corchetes 
de una expresión están equilibrados, es decir, que estos delimitadores 
se abren y cieran de forma adecuada.
 
Ejemplos:
expresionEquilibrada('{ [ x * ( y + z ) ] * 12 }');  // imprime true
expresionEquilibrada('{ x * ( y + z ) ] + 12 }');  // imprime false
*/

class Evaluate {
  bool balancedExpression(String expression) {
    //convert the expression to a iterable list
    List<String> charactersList = expression.split(' ');

    // create a stack to save the opening signs
    List<String> stack = [];

    // create a map to save the valid pairs
    Map<String, String> pairs = {
      '{' : '}',
      '(' : ')',
      '[' : ']'
    };

    for(String character in charactersList){
      // print(character);
      // if character is open, add to the stack

      if(pairs.containsKey(character)){
        // print(character);
        stack.add(character);
      }
      else if(pairs.containsValue(character)){
        // print(character);
        // print('$stack ${stack.removeLast()}');
        if(pairs[stack.removeLast()] != character){
          return false;
        }
      }
      // }else if(pairs.containsValue(character)){
      //   // print(pairs[stack.last]);
      //   // print(stack[stack.length - 1]);
      //   // print(stack.last);
      // }

      // is closed character 
      // check if is the equivalent to opened of the stack
    }
    print(stack);
    return stack.length == 0;
  }
  // bool balancedExpression(String expression) {
  //   List<String> charactersList = expression.split(' ');
  //   int casesToEvaluate = 0;
  //   int count = 0;
  //   // for (String character in charactersList){

  //     if(charactersList.contains('(') && charactersList.contains('{') && charactersList.contains('[')){
  //       casesToEvaluate = 3;
  //     }else if(charactersList.contains('(') && charactersList.contains('{')){
  //       casesToEvaluate = 2;
  //     }else if(charactersList.contains('(') && charactersList.contains('[')){
  //       casesToEvaluate = 2;
  //     }else if(charactersList.contains('{') && charactersList.contains(']')){
  //       casesToEvaluate = 2;
  //     }else if(charactersList.contains('{')){
  //       casesToEvaluate = 1;
  //     }else if(charactersList.contains('(')){
  //       casesToEvaluate = 1;
  //     }else if(charactersList.contains('[')){
  //       casesToEvaluate = 1;
  //     }

  //   //   // print(character);
  //     if(charactersList.contains('{')){
  //       if(charactersList.contains('}')){
  //         count++;
  //       }
  //     }

  //     if(charactersList.contains('[')){
  //       if(charactersList.contains(']')){
  //         count++;
  //       }
  //     }

  //     if(charactersList.contains('(')){
  //       if(charactersList.contains(')')){
  //         count++;
  //       }
  //     }

  //   // }
  //   return count == casesToEvaluate;
  // }
}

void main(){
  Evaluate evaluate = Evaluate();
  print(evaluate.balancedExpression('{ [ x * ( y + z ) ] * 12 }'));
  // evaluate.balancedExpression('{[x*(y+z)]*12}');
}
 
