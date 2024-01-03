/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 22:
Crea una función que invierta el orden de un texto
sin usar funciones nativas del lenguaje.
 
Ejemplos:
invertirTexto("Hola");
 
Devuelve: 
aloH
 
*/

class Words {
  dynamic reversedWord(String text){
    // Create a variable to save reversed word
    var reversedWord = '';

    // Iterate word in reversed form
    for(int i = text.length - 1; i >= 0; i-- ){
      reversedWord += text[i];
    }
    // return result
    return reversedWord;
  }
}

void main(){
  Words word = Words();
  print(word.reversedWord('Hola'));
}

// String reverse(String s) {
//   List<String> chars = s.split('');
//   int len   = s.length - 1;
//   int i     = 0;

  

//   while (i < len) {
//     print('len:${len} - i:${i}');
//     var tmp = chars[i];
//     chars[i] = chars[len];
//     chars[len] = tmp;
//     i++;
//     len--;
//   }

//   return chars.join().toString();
// }

// void main() {
//   var s = "hola";
//   print(s);
//   print(reverse(s));
// }

// class Text {
//   String? text;
//   Text(this.text){
//     print(reverseText(text!));
//   }

//   String reverseText(String text){
//     for(int i = 0; i < text.length; i++){
//       print(text[i]);
//     }
//     return text;
//   }
// }

// void main(){
//   String textStr = 'Hola';
//   Text(textStr);
// }