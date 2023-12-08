/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 17:
Dada un array de frases, contar el número de palabras que tiene
 
Ejemplos:
contarPalabras([
                "Hola, soy Víctor Robles WEB",
                "Me gusta programar",
                "Y soy desarrollador web"
            ]);
 
Devuelve: 12
 
*/
class Words {
  int countWords(List<String> data) {
    List<String> words = [];

    for(int i = 0; i < data.length; i++) {
      words += data[i].split(' ');
    }

    return words.length;
  }
}

void main(){
  Words words = Words();
  List<String> data = ['Hola soy Oscar Perez', 'Me gusta programar y aprender nuevas cosas','y soy desarrollador movil','hola','hola'];
  final result = words.countWords(data);
  print('The phrase: "${data.join(', ')}", has: ${result} words.');
}

