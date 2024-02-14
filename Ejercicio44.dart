/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 44:
Crea una función que detecte si un string es un pangrama o no.
 
Un pangrama es una frase que incluye todas las letras del abecedario.
 
Ejemplos:
esPangrama("El pequeño jabato erizo se balanceaba sobre la rama del árbol.") // true
esPangrama("Hola soy Víctor Robles") // false
*/
// import 'package:diacritic/diacritic.dart';

class Word {
  // bool isPangram(String text){
  //   text = text.toLowerCase();
  //   List<String> letterArray = text.split('').where((element) => element != ' ' && element != '.').toList();
  //   // List<String> alphabeat = ['A','B','C','D','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  //   var alphabeat = 'abcdefghijklmnñopqrstuvwxyz'.split('');
  //   // print(text);
  //   // print(letterArray);
  //   // print(alphabeat);

  //   // for (int i = 0; i < alphabeat.length; i++){
  //   //   // print('alphabeat[i]:${alphabeat[i]} - letterArray[i]:${letterArray[i]}');
  //   //   if(alphabeat[i] == letterArray[i]){
  //   //     return true;
  //   //   }
  //   // }

  //   // print(letterArray);
  //   // print(alphabeat);
  //   // print(text.toLowerCase());
  //   return alphabeat.every((letter) => letterArray.contains(letter));
  // }

    bool isPangram(String text){
      text = text.toLowerCase();
      List<String> letterArray = text.split('').where((element) => element != ' ' && element != '.').toList();
      var alphabeat = 'abcdefghijklmnñopqrstuvwxyz'.split('');
      return alphabeat.every((letter) => letterArray.contains(letter));
  }
}

void main(){
  Word word = Word();
  print(word.isPangram('El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro.'));
  print(word.isPangram('abcdefghijklmnñopqrstuvwxyz'));
  print(word.isPangram('a'));
  print(word.isPangram('bcde'));
  print(word.isPangram('El cadáver de Wamba, rey godo de España, fue exhumado y trasladado en una caja de zinc que pesó un kilo.'));
  print(word.isPangram('José compró una vieja zampoña en Perú. Excusándose, Sofía tiró su whisky al desagüe de la banqueta.'));
  // print(word.isPangram('Hola soy un programador'));
}







