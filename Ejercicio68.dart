/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 68:
Crea una función que pueda generar contraseñas aleatorias.
 
Podrás pasar los siguientnes parámetros para las contraseñas:
- Longitud: Entre 6 y 20.
- Con o sin mayúsculas.
- Con o sin números.
- Con o sin símbolos.
 
Ejemplos:
generarContrasenia(12, true, true, false);
 
*/

import 'dart:math';

class Password {
  String generatePassword( int pwdLength, bool withMayus, bool withNumbers, bool withSimbols ){

    String password = '';

    String dictionary = 'abcdefghijklmnopqrstuvwxyz';

    // if(pwdLength < 6 || pwdLength > 20)
    if (pwdLength < 6 || pwdLength > 20) {
      return '';
    }


    // if(withMayus && withNumbers && withSimbols){
    //   print('with 3 configs');
    // }else if(withMayus && withNumbers){
    //   print('with mayus & numbers');
    // }else if(withMayus && withSimbols){
    //   print('with mayus & simbols');
    // }else if(withNumbers && withSimbols){
    //   print('with numbers & simbols');
    // }else 
    
    if(withMayus){
      // print('only with mayus');
      dictionary+= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    }
    if(withNumbers){
      // print('only with numbers');
      dictionary+='0123456789';
    }
    if(withSimbols){
      // print('only with simbols');
      dictionary+='!@#%&*()/[]{}=<>.,';
    }else{
      // only with letters
      print('only with letters');
    }

    for(int i = 0; i < pwdLength; i++){
     password += dictionary[0];
    }
    return password;
  }
}

void main(){
  Password password = Password();
  print(password.generatePassword(12, true, true, true));
}

