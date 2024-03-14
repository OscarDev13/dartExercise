/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 70:
Crea una función que dado un texto que contenga varias frases en minusculas,
logre poner en mayusculas las letras correctas del texto. 
 
Ejemplos:
capitalizarFrase("hola. como estas. soy Víctor Robles. me gusta programar.");
 
Devuelve:
Hola. Como estas. Soy Victor Robles. Me gusta programar.
*/

class Capitalize {
  String capitalizePhrase(String text){
    
    var capitalized = '';
    var newPhrase = true;

    for(int i = 0; i < text.length; i++){
      if(newPhrase){
        if(text[i] != ' '){
          capitalized += text[i].toUpperCase();
          newPhrase = false;
        }else{
          capitalized+=text[i];
        }
      }else{
        capitalized+=text[i];
      }
      if(text[i] == '.') newPhrase = true;
    }

    return capitalized;
  }
}

void main(){
  Capitalize capitalize = Capitalize();
  print(capitalize.capitalizePhrase('hola. como estas. soy Víctor Robles. me gusta programar.'));
}