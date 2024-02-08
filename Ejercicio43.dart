/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 43:
Dada una colección de letras:
[
   ['A','B','C','D'],
   ['Z','V','K','S'],
   ['F','G','O','E']
]
 
Crea una función que me diga si la palabra que le paso como parametro 
se puede formar con las letras de la colección
 
Ejemplos:
puedeFormarPalabra('PERRO', coleccion)  // false
puedeFormarPalabra('CASO', coleccion)   // true
 
*/

class Word {
  bool canCreateWord(String word, List<List<String>> collection) {
    // Create list to store the data collection
    List<String> values = [];

    // Create word to compare the value
    String wordCollection = '';

    //Create the word converted in a list
    List<String> wordList = word.split('');
    // print('${word} ${collection[0][0]}');
    for (int i = 0; i < collection.length; i++) {
      List<String> innerList = collection[i];
      for (int j = 0; j < innerList.length; j++) {
        String element = innerList[j];
        // print(element);
        values.add(element);
      }
    }

    // Compare wordList contains the value in values
    wordList.forEach((element) {
      if (values.contains(element)) {
        wordCollection += element;
      }
    });
    // print(wordCollection);
    return wordCollection == word;
  }
}



void main() {
  Word wordObject = Word();
  List<List<String>> collection = [
    ['A', 'B', 'C', 'D'],
    ['Z', 'V', 'K', 'S'],
    ['F', 'G', 'O', 'E']
  ];

  print(wordObject.canCreateWord('CASCO', collection));
  // wordObject.canCreateWord('CASCO', collection);
}
