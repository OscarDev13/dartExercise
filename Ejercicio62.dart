/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 62:
Dado un diccionario de letras disponibles:
  [
   ['A','B','C','D'],
   ['S','V','C','S'],
   ['A','D','O','E']
  ]
 
 Crea una función que me diga si la palabra que le paso
 como parametro se puede formar con las letras del
 diccionario disponibles.
 
¡PERO OJO! Cada vez que se usa una letra, se eliminia del array.
 
Ejemplos:
puedeFormarPalabra('BESO', diccionario)   // true
puedeFormarPalabra('SOSO', diccionario)   // false   
 
*/

class Word {
  bool canCreateWord(String word, List<List<String>> alphabeat) { 
    List<String> alphabeatList = [];
    List<String> lettersOfWords = word.split('');
    String createdWord = '';
    for(int i = 0; i < alphabeat.length; i++){
      for(int j = 0; j < alphabeat[i].length; j++){
        alphabeatList.add(alphabeat[i][j]);
      }
    }
    for(var letter in lettersOfWords){
      // print(letter);
      if(alphabeatList.contains(letter)){
        createdWord+=letter;
        alphabeatList.remove(letter);
      }
    }


    // print(createdWord);
    return createdWord == word;
  }
}

void main(){
  List<List<String>> alphabeat =   [
   ['A','B','C','D'],
   ['S','V','C','S'],
   ['A','D','O','E']
  ];

  Word word = Word();
  print(word.canCreateWord('BESO', alphabeat));
  print(word.canCreateWord('SOSO', alphabeat));
  print(word.canCreateWord('CASADOS', alphabeat));
}
 
