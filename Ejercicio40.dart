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

 */

class Converter {
  static int romanToInt(String romanNumber){

    // numero original
    var originalNumber = romanNumber;

    // variable to keep the final string
    int result = 0;
    // listado de numeros romanos
    List<String> romanNumbers = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I'];

    // Equivalente en numeros decimales
    List<double> decimalValues = [1000,900,500,400,100,90,50,40,10,9,5,4,1];

  for(int i = 0; i < decimalValues.length; i++){
    
  }

    return result;
  }
}

void main(){
  print(Converter.romanToInt('XVIII'));
  print(Converter.romanToInt('CXX'));
}