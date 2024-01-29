/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 40:
Crea una función que convierta un número romano a decimal.
 
Ejemplos:
romanoAEntero("XVIII")   // 18
romanoAEntero("CXX")     // 120
romanoAEntero("CXX")     // 120

 */

class Converter {

  static int romanToInt(String romanNumber){
    Map<String, int> romanValues = {
      'I' : 1,
      'IV': 4,
      'V' : 5,
      'IX': 9,
      'X' : 10,
      'XL': 40,
      'L' : 50,
      'XC': 90,
      'C' : 100,
      'CD': 400,
      'D' : 500,
      'CM': 900,
      'M' : 1000,
    };

    int decimal = 0;
    int index = 0;

    while(index < romanNumber.length){
      if(index + 1 < romanNumber.length && romanValues.containsKey(romanNumber.substring(index, index + 2))){
        decimal += romanValues[romanNumber.substring(index, index + 2)]!;
        index += 2;
      }else{
        decimal += romanValues[romanNumber.substring(index, index + 1)]!;
        index += 1;
      }
    }
    return decimal;
  }
}

void main(){
  print(Converter.romanToInt('IXXC'));
  print(Converter.romanToInt('XVIII'));
  print(Converter.romanToInt('XIV'));
  print(Converter.romanToInt('CXX'));
  print(Converter.romanToInt('XV'));
  print(Converter.romanToInt('XVI'));
  // print(Converter.romanToInt('CXX'));
}