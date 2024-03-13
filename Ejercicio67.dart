/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 67:
Dada una frase devuelve la longitud de la última palabra que tenga más de 4
caracteres y que contenga la vocal A.
 
Ejemplos:
longitudUltimaPalabra('El cielo está encapotado quien lo desencapotará hoy')
 
*/
 

 class Word {
  String lengthLastWord( String text ){
    List<String> textList = text.toLowerCase().split(' ');
    List<String> result = [];
    for(String word in textList){
      // String currentWord = word;
      if(word.length > 4 && word.contains('a')){
        result.add(word);
      }
    }
    // print(textList);
    // print(result);
    return '${result.last} : ${result.last.length}'; // result[result.lencth - 1]
  }
 }

 void main(){
  Word word = Word();
  print(word.lengthLastWord('El cielo esta encapotado quien lo podra capotar desencapotara hoy'));
 }