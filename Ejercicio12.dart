/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 12:
Crea un programa que cuente las palabras de un texto
 
Ejemplos:
contarPalabras("El perro de san roque no tiene el rabo 
porque es un perro muy muy malo");
 
Devuelve:
{
  el: 2,
  perro: 2,
  de: 1,
  san: 1,
  roque: 1,
  no: 1,
  tiene: 1,
  rabo: 1,
  porque: 1,
  es: 1,
  un: 1,
  muy: 2,
  malo: 1
}
*/

class Words {
  Map<dynamic,dynamic> countWords(String text) {
    // Create array with the words of the thext, convert to minus, removec qcute accent
    final words =
        text.toLowerCase().replaceAll(RegExp(r'/[^\w\s]/gi'), '').split(' ');
    print(words);

    // create empty object to store the words and the count
    Map<dynamic, dynamic> val = {};

    words.forEach((word) => {
      if(val.containsKey(word)){
        val[word]++
      }else{
        val[word]=1
      }
    });
    // for (int i = 0; i < val.length; i++){
    //   print(val['perro']);
    // }
    // for (int i = 0; i < words.length; i++) {
    //   print('${wordsCount[i].toString()} ${words[i]}');
    //   print(val);
    //   print(i);
    //   if (val.containsKey(words[i])) {
    //     print(i);
    //     val[i]++;
    //   } else {
    //     print('${words[i]} - ${wordsCount[i]}');
    //     val[i] = 1;
    //   }
    // }
      // return conuntedWords
      return val;
  }
}

void main() {
  Words words = Words();
  // print(words.countWords('El perro perro perro perro perro de san roque no tiene el rabo porque es un perro muy muy malo'));
  words.countWords('El perro perro perro perro perro de san roque no tiene el rabo porque es un perro muy muy malo').forEach((key, value) => print('${key}:${value}'));
}