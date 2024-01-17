/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 31:
Dado un texto, crea una función que sea capaz de invertir
el orden de sus palabras.
 
No podemos usar funciones nativas del lenguaje.
 
Ejemplos:
invertirPalabras("Hola soy Victor Robles"); // Devuelve: Robles Victor soy Hola
*/
class Words {
  static String reverseWords( String data ) {

    final _words = data.split(' ');
    // print(_words);
    String _reversedWord = '';

    for(int count = _words.length - 1; count >= 0; count--){
      if(_words[count].length >= 1){
        _reversedWord += _words[count] + ' ';
      }
    }
    return _reversedWord;

    // for(int i = words.length - 1; i < words.length ; i--){
    //   print(words[i]);
    // }
  }
}

void main(){
  print(Words.reverseWords('Hola soy un programador'));
}