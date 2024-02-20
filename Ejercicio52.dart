/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 52:
Dado un array de arrays, unir todos los arrays en uno solo
sin usar la función flat o concat de javascript
solo con estructuras de control y funciones basicas de arrays
 
Ejemplos:
const numeros = [  
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
 
limpiarNumeros(numeros);
 
Devuelve: 
[1, 2, 3, 4, 5, 6, 7, 8, 9]
 
*/


class Number {
  List<int> cleanNumbers(List<List<int>> numbers){
    // print(numbers);
    List<int> result = [];
    for(int i = 0; i < numbers.length; i++){
      for(int j = 0; j < numbers[i].length; j++){
        // print(numbers[i][j]);
        if(!result.contains(numbers[i][j])){
          result.add(numbers[i][j]);
        }
      }
    }
    return result;
  }
}

void main(){
  Number number = Number();
  print(number.cleanNumbers([[1,1,2,3],[1,4,5,20,10,6],[7,8,9,9]]));
}