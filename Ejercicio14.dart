/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 14:
Dada una cadena de texto, comprobar si es un palindromo o no. No usar funciones de
javascript, solo estructuras de control
 
Los palíndromos son palabras que se leen igual aun estando invertidas. 
Por ejemplo: ana, bob, otto, allivessevilla
 
Ejemplos:
esPalindromo("otto") // Devuelve: true
esPalindromo("victor") // Devuelve: false
 
*/



class VerifyWord {
  bool isPali(String text){
    text = text.toLowerCase().replaceAll(' ', ''); // try to not use replaceAll method
    List<String> reversedWords = [];
    List<String> words = [];
    String palabraInvertida = '';
    for(int i = text.length - 1; i >= 0; i--){
      // print(text[i]);
      reversedWords.add(text[i]);
    }
    for(int i = 0; i < text.length; i++){
      words.add(text[i]);
    }
    for(int i = 0; i < words.length; i++){
      palabraInvertida += reversedWords[i];
      // if(text[i] == reversedWords[i]){
      //   result = true;
      // }
    }
    // print(words);
    // print(reversedWords);
    // print(palabraInvertida);
    return (palabraInvertida == text ? true : false);
  }
}

void main() {
  VerifyWord words = VerifyWord();
  words.isPali('ottro') == true ? print('es palindromo') : print('no es palindromo');
  print(words.isPali('ottro'));
  // print(words.isPali('otto'));
  // print(words.isPali('Anita lava la tina'));
  // print(words.isPali('ana'));
  // print(words.isPali('mopri'));
  // print(words.isPali('Isaac no ronca asi'));
}