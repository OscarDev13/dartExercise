/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 41:
Crea una función que invierta los números de un número entero.
 
Ejemplos:
invertirEntero(123)   // 321
invertirEntero(-123)  // -321
 
*/
 class Number {
  static int invertNumber(int number){
    int originalValue = number;
    // print(number);
    String numberString = number.toString();
    List<String> values = [];
    String newNumber = '';
    for(int i = 0; i < numberString.length; i++){
      if(numberString[i] != '-'){
        values.add(numberString[i]);
      }
    }
    for(int i = values.length-1; i >= 0; i--){
      // print(values[i]);
      newNumber+=values[i];
    }
    // print(newNumber);
    // print(values);
    // print(originalValue);
    return originalValue.toString().contains('-') ? int.parse('-${newNumber}') : int.parse(newNumber);
  }
 }

 void main(){
    print(Number.invertNumber(123));
    print(Number.invertNumber(-123));
 }