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
    int posicion = 0;
    dynamic partes = palabra.split('').toList();
    dynamic arrayPista = [];
    print('Te quedan ${intentos} intentos');
    
    // for (var parte in partes.toList()) {
    //   // arrayPista.add('_');
    //   // arrayPista[parte] = '_';
    // }
    partes.toList().forEach((parte)=> {
      arrayPista.add('_')
    });
    // print('partes ${partes}');
    print('La palabra es ${showCorrectWord(arrayPista)}');
    print('La palabra tiene ${palabra.length} letras');
    do {
      if(!arrayPista.contains('_')){
        // print('aun tiene _');
        print('Have you won...');
        break;
        // print('entra a if');
      }
      // else{
      //   print('se va al else');
      //   // exit(1);
      //   // break;
      // }
      // // Escribir la palabra a buscar
      print('Ingresa una letra: ');
      String? texto = stdin.readLineSync();
      // Evalua si el la cadena a evaluar (palabra) contiene el texto (letra) que el usuario esta ingresando
      if (partes.toString().contains(texto.toString())) {
        print('la letra ${texto} si pertenece a la palabra ');
        for (int i = 0; i < partes.length; i++) {
          if (texto.toString() == partes[i]) {
            // print(i);
            // arrayPista.replace(i,texto);
            arrayPista[i] = texto;
          }
          // print('')
            // if (!arrayPista[i].contains('_')) {
            //   print('You win');
            //   // exit(1);
            // }
        }
        // mostrar como va el arreglo de pistas
        // print('La palabra es: ${''+arrayPista.join('')}');
        print('La palabra es ${showCorrectWord(arrayPista)}');
        // Si no la contiene, se la cantidad de intentos disminuyen
      } else {
        ahorcado.printAhorcado(posicion);
        print('La letra ${texto} no está en la lista');
        intentos--;
        posicion++;
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

int wordLength(String word){
  return word.length;
}

dynamic showCorrectWord(List word){
  return ''+word.join('');
}

void main() {
  Encuesta encuesta = Encuesta();
  encuesta.start();
}