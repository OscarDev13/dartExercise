/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 53:
Crea una función para encontrar la longitud del mayor
subconjunto de caracteres que no se repiten.
 
Ejemplos:
encontrarSubcadenaSinRepetir("abcabcbb")  // abc, 3
encontrarSubcadenaSinRepetir("bbbbb")     // b, 1
encontrarSubcadenaSinRepetir("pwwkew")    // wke, 3
*/
 
class Word {
  String findSubstringWithoutRepeat(String substring){
    String substringWithoutRepeat = '';

    String currentSubstring = '';
    
    for(String character in substring.split('')){
      // print(character);
      if(currentSubstring.contains(character)){
        currentSubstring = '';
      }
      currentSubstring += character;

      if(currentSubstring.length > substringWithoutRepeat.length){
        substringWithoutRepeat = currentSubstring;
      }
    }
    // print(currentSubstring);
    return '${substringWithoutRepeat}, ${substringWithoutRepeat.length}';
    // return '${'abc'}, ${1}';
  }
}

void main(){
  Word word = Word();
  print(word.findSubstringWithoutRepeat('abcabcbb'));
  print(word.findSubstringWithoutRepeat('bbbbb'));
  print(word.findSubstringWithoutRepeat('pwwkew'));
}