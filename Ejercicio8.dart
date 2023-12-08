/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 8:
Crea un algoritmo al cual le pase un número entero
y me lo convierta a número romano
 
Ejemplos:
enteroARomano(100)); // Resultado:  C
enteroARomano(345)); // Resultado: CCCXLV
 
*/

class Conversor {
  String intToRoman(dynamic number){
    // numero original
    var originalNumber = number;

    // variable to keep the final string
    String result = '';

    // listado de numeros romanos
    List<String> romanNumbers = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I'];

    // Equivalente en numeros decimales
    List<double> decimalValues = [1000,900,500,400,100,90,50,40,10,9,5,4,1];

    // bucle para recorrer numeros decimales
    for(int i = 0; i < decimalValues.length; i++){
      // print('${i} - ${decimalValues[i]} - ${romanNumbers[i]}');
      // Bucle para iterar mientras el numero sea mayor o igual al numero decimal que estoy recorriendo
      while(number >= decimalValues[i]){
        // añadir el caracter romano al resultado
        result += romanNumbers[i];
        // Actualizar numero para restar el valor decimal que ya se ha agregado al resultado de numeros romanos
        // number = number - decimalValues[i];
        number -= decimalValues[i];
      }
    }


  // print('${romanNumbers.length} ${decimalValues.length}');
    return 'Roman value of ${originalNumber}: ${result}';
  }
}

void main(){
  Conversor conversor = Conversor();
  print(conversor.intToRoman(10));
}


