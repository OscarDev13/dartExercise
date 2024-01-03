/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 23:
Crea una función que a la cual le pase unos números en un array y me decodifique
el mensaje teniendo en cuenta que cada letra tiene un numero asignado.
 
Las letras del abecedario de la A a la Z tienen un número
por ejemplo la A es el numero 1 y la Z es el numero 26
 
Ejemplos:
decodificarMensaje([8, 15, 12, 1]);
 
Devuelve: 
HOLA
 
*/

// class Word{

//   final List<String> alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

//   String decodeArray(List<int> data){
//     // print(alphabet.length);
//     String result = '';

//     for(int i = 0; i < alphabet.length-1; i++){
//       // if(data[i] < 1 || data[i] > 26){
//       //   break;
//       // }
//       // else{
//         for(int y = 0; y < alphabet.length-1; y++){
//           // print('y:${y} - data[i]:${data[i]}');
//           // result += alphabet[y-1];
//           // print(result);
//           if(y == data[i]){
//             // print('y:${y} - data[i]:${data[i]}');
//             result += alphabet[y-1];
//             print(result);
//           }
//         }
//       // }
//     }
//     return result;
//   }
// }

import 'dart:io';

class Word {

  final List<String> alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  String result = '';

  String decodeMessage(List<int> data){

    for(int i = 0; i < data.length; i++){
      if(data[i] < 1 || data[i]>26){
        break;
      }
    }

    data.forEach((element) {
      // print(element);
      if(element>=1 && element <= 26){
        result += alphabet[element-1];
      } else {
        print('${element}: is outside of range');
        exit(1);
      }
    });

    return result;
  }
}

void main(){
  Word word = Word();
  List<int> data = [8,15,12,1];
  print(word.decodeMessage(data));
}