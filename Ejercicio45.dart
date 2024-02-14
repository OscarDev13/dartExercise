/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 45:
Dado un array de números, elimina los números duplicados.
 
Ejemplos:
eliminarDuplicados([1, 1, 2, 2, 3, 4, 5, 5, 5, 6])
 
// Devuelve:
[ 1, 2, 3, 4, 5, 6 ]
*/

class Number {
  List<int> deleteDuplicates(List<int> numbers){
    numbers.sort(); // Ascending sort
    // print(numbers);
    List<int> newNumbersList = [];
    for(int i = 0; i < numbers.length; i++){
      if(!newNumbersList.contains(numbers[i])){
        newNumbersList.add(numbers[i]);
      }
    }
    // return newNumbersList.reversed.toList(); // Descending sort
    return newNumbersList;
  }
}

void main(){
  Number number = Number();
  print(number.deleteDuplicates([6,6,5,4,9,5,2,3,1,4,2]));
}