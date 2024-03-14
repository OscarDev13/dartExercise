/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 69:
Crea una función que dado un texto, sea capaz de censurar palabras.
 
Ejemplos:
censurar("Texto de prueba", "texto") Devuelve: ***** de prueba
 
*/

class Text {
  String censure(String text, String wordToCensure){
    List<String> wordsList = text.toLowerCase().split(' ');
    String censuredWord = '';
    if(!wordsList.contains(wordToCensure.toLowerCase())) return '$text not contains $wordToCensure';
    for(int i = 0; i < wordToCensure.length; i++){
      censuredWord+='*';
    }
    for(int j = 0;  j < wordsList.length; j++){
      if(wordsList[j].toLowerCase() == wordToCensure.toLowerCase()){
        wordsList[j] = censuredWord;
      }
    }
    return wordsList.join(' ');
  }
}

void main(){
  Text text = Text();
  print(text.censure('Texto de prueba de palabras de Palabras','pal'));
}
 