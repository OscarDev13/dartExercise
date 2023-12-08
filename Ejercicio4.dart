/* 
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 4:
Crea el juego del ahorcado.
El usuario tendrá que ir adivinando y descubriendo las letras de una palabra 
secreta, y tendrá 5 intentos (un intento por extremidad del cuerpo humano).
 
Utiliza el método de entrada de datos habitual de tu lenguaje,
en el caso de JS, usaremos la función prompt.
 
Ejemplo:
juegoDelAhorcado('victor');  
 
// Salida:
Adivina la letra: i
La palabra es: _i___
Te quedan 5 intentos
 
*/
import 'dart:io';

class Ahorcado {
  Ahorcado() {
    this.createArray();
  }
  var cuerda = '''
       ------------
      |           |
      |           
      |         
      |
      |
      |
      -------------
       ''';
  var cabeza = '''
       ------------
      |           |
      |           O
      |         
      |
      |
      |
      -------------
       ''';

  var cuerpo = '''
       ------------
      |           |
      |           O
      |           | 
      |
      |
      |
      -------------
       ''';

  var brazos = '''
       ------------
      |           |
      |           O
      |         / | \\
      |
      |
      |
      -------------
       ''';

  var pies = '''
       ------------
      |           |
      |           O
      |         / | \\
      |          / \\
      |
      |
      -------------
       ''';

  var arrayAhorcado = [];
  void createArray() {
    arrayAhorcado.add(cuerda);
    arrayAhorcado.add(cabeza);
    arrayAhorcado.add(cuerpo);
    arrayAhorcado.add(brazos);
    arrayAhorcado.add(pies);
  }

  void printAhorcado(int index) {
    print(arrayAhorcado[index]);
  }
}

class Encuesta {
  Ahorcado ahorcado = Ahorcado();

  void start() {
    buscaPalabra('parangaracutirimicuaro');
  }

  void buscaPalabra(String palabra) {
    int intentos = 5;
    int index = 0; //* Para pasarle al metodo que muestra las figuras del ahorcado
    dynamic partes = palabra.split('').toList();
    dynamic arrayPista = [];
    print('Te quedan ${intentos} intentos');
    partes.toList().forEach((parte)=> {
      arrayPista.add('_')
    });
    print('La palabra es ${showCorrectWord(arrayPista)}');
    print('La palabra tiene ${wordLength(palabra)} letras');
    do {
      if(!arrayPista.contains('_')){
        print('Have you won...');
        break;
      }
      print('Ingresa una letra: ');
      String? texto = stdin.readLineSync();
      // Evalua si el la cadena a evaluar (palabra) contiene el texto (letra) que el usuario esta ingresando
      if (partes.toString().contains(texto.toString())) {
        print('la letra ${texto} si pertenece a la palabra ');
        for (int i = 0; i < partes.length; i++) {
          if (texto.toString() == partes[i]) {
            arrayPista[i] = texto;
          }
        }
        // mostrar como va el arreglo de pistas
        print('La palabra es ${showCorrectWord(arrayPista)}');
        // Si no la contiene, se la cantidad de intentos disminuyen
      } else {
        ahorcado.printAhorcado(index);
        print('La letra ${texto} no está en la lista');
        intentos--;
        index++;
        print('Te quedan ${intentos} intentos');
        print('La palabra es: ${''+arrayPista.join('')}');
        if (intentos == 0) {
          print('The word was: ${palabra}');
          print('Have you lost...!');
        }
      }
    } while (intentos != 0);
  }
}

int wordLength(String word) => word.length; 

String showCorrectWord(List word) => ''+word.join('');

void main() {
  Encuesta encuesta = Encuesta();
  encuesta.start();
}