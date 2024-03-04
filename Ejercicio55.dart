/*
Advertencias:
- En español por fines didácticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 55:
Dado un conjunto de enteros distintos, 
devuelve todos los subconjuntos posibles.
 
Ejemplos:
subconjuntos([1,2,3]);
 
Devuelve:
[
[3],
[1],
[2],
[1,2,3],
[1,3],
[2,3],
[1,2],
[]
]
*/

class Sets {
  List<List<int>> subSets(List<int> numbers) {
    List<List<int>> subsets = [[]];

    // Sort results
    numbers.sort((a,b) => a - b);

    // Iterate all numbers
    for(int i = 0; i < numbers.length; i++){
      // get size of subsets list
      var size = subsets.length;
      // print(size);

      // Iterate current subset
      for(int j = 0; j < size; j++){
        // print('hola');
        // print(subsets[j]);
        // Add to result a copy of current subset with the curren number agregated
        // subsets.add([...subsets[j], numbers[i]]);
        // print([...subsets[j], numbers[i]]);
        // print(subsets[j]);
        subsets.add([...subsets[j], numbers[i]]);
        // print('subsets ${[...subsets[j]]} numbers ${numbers[i]}');
      }
    }

    return subsets;
  }
}

void main(){
  Sets sets = Sets();
  print(sets.subSets([1,2,3]));
}
 