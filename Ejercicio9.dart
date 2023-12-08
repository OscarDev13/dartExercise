/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 9:
Crea una función que reciba un array de números y calcule
la suma de todos los números pares del array
 
Ejemplos:
sumarPares([2, 13, 6, 15]);  // Resultado: 8
 
*/

class NumberPar {
  dynamic operationResult(List<int> numbers){
    // create the variable that it will contain the result
    var result = 0;

    // // iterate the array
    // for(int i = 0; i < numbers.length; i++){
    //   // if the number is par
    //   if(numbers[i] %2 == 0){
    //     // plus the value of the array in the position i to the result value( variable result )
    //     result += numbers[i];
    //   }
    // }

    numbers.forEach((element) => {
      if(element %2 == 0){
        result += element
      }
    });

    // Return the result of the operation
    return result;
  }
}
  void main(){
    NumberPar numberPar = NumberPar();
    var resultado = numberPar.operationResult([1,2,3,4,5,6,7,8,9,10,20,40,60,80,100]);
    print(resultado);
  }