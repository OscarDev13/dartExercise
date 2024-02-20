/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 49:
Crea una función que dado un array de números devuelva el número 
más pequeño de la matriz.
 
No puedes ordenar el array, solo usar estructuras de control.
 
Ejemplos:
elMasPequenio([8,9,99,88,77,1,12,13,6,7])  // Devuelve: 1
*/
 
class Numbers {
  // static int theMostSmall(List<int> numbers){
  //   int min, aux;
  //   for(int i = 0; i < numbers.length; i++){
  //     min = i;
  //     for(int j = 0; j < numbers.length; j++){
  //       // print('numbers in i: ${numbers[i]} numbers in j: ${numbers[j]}');
  //       if(numbers[j] < numbers[min]){
  //         min = j;
  //       }
  //       aux = numbers[i];
  //       numbers[i] = numbers[min];
  //       numbers[min] = aux;
  //     }
  //   }
  //   // print(numbers);
  //   return numbers[numbers.length - 1];
  // }

    dynamic theMostSmall(List<int> numbers){
      var min =  numbers[0];
      var max = numbers[0];
      for(int number in numbers){
        if(number < min){
          min = number;
        }
        if(number > max ){
          max = number;
        }
      }
      return [min, max];
    }
}

void main(){
  Numbers numbers = Numbers();
  print(numbers.theMostSmall([8,9,99,88,77,1,12,13,6,7]));
  print(numbers.theMostSmall([2,10,9,8,7,6,5,4,3]));
  print(numbers.theMostSmall([2,3,4,5,6,7,8,9,10]));

}