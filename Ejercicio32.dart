/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 32:
Dado un texto, crea una función que sea capaz de generar
un nuevo texto que incluya solo las palabras de 4 caracteres o más.
 
Ejemplos:
fraseFiltrada("Hola soy Victor Robles, hoy hace frio"); 
 
Devuelve: Hola Victor Robles, hace frio
*/

class Words {
  static String filteredPhrase( String phrase){
    List<String> separatedPhrase = phrase.split(' ');
    String result = '';
    for(int i = 0; i < separatedPhrase.length; i++){
      if(separatedPhrase[i].length >= 4){
        result += separatedPhrase[i] + ' ';
      }
    }
    // print(result);
    return result;
  }
}

void main(){
  print(Words.filteredPhrase('Hola soy un programador aprendiendo el Flutter, hoy hace calor y alrato hara frio'));
}