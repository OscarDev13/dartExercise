/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 10:
Crea una función que reciba un DNI (8 números) y calcule la letra del DNI
 
Es un proceso matemático facil que se basa en obtener el 
resto de la división entera del número de DNI y el número 23. 
Y con el resto se obtiene la letra, usandolo como posición o indice
dentro de un array de letras.
 
Este sería el array de letras:
const letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 
                'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
 
Ejemplos:
generarLetraDNI("25439343");  // Resultado: 25439343D
 
*/

class DNI {

  
  // void display(dynamic number){
  //   // array of letters
  //   List<String> letters = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X','B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
  //   number = int.parse(number);
  //   print('${number} is ${number.runtimeType}');
  //   // variable to save the result
  //   dynamic result = 0;

  //   // variable to change the runtimetype
  //   dynamic numberInt = 0;

  //   if(number.runtimeType == String){
  //     numberInt = int.parse(number);
  //     // print(numberInt.runtimeType);
  //   }

  //   if((numberInt > 0 && numberInt < 9999999) && ( int.parse(number) > 0 && int.parse(number) < 9999999)){
  //     // get the mod of the number divided by 23
  //     result = numberInt % 23;
  //     // iterate the array
  //     for (int i = 0; i <= letters.length; i++){
  //       // assigning the value to other variable
  //       var resultToInt = result.toInt();
  //       // find the letter when the position of the array is equals to the mod result
  //       if(resultToInt == i){
  //         number += letters[i];
  //       }
  //     }
  //     print(number);
  //   } else {
  //     print('Number could be 8 characters');
  //   }

  //   // print(numberInt.runtimeType);
  //   // print(letters.length);
  // }

  String result(dynamic number){
    // array of letters
    List<String> letters = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X','B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    // declare variable to save the mod
    var mod = 0;

    dynamic result = '';
    //convert the String input number to int
    number = int.parse(number);
    if(number > 0 && number < 99999999){
      // save the mod of operation
      mod = number %23;

      // get the letter of the array based of the mod
      result = letters[mod];

      // return the result
      return '${number.toString()}${result}';
    }else {
      return 'Invalid number.';
    }

  }
}

void main(){
  DNI dni = DNI();
  var result = dni.result('21439143');
  print(result);
}