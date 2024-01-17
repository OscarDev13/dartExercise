/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 30:
Dado un array de numeros, permitir los numeros duplicados
un maximo de 2 veces y devolver la longitud del array.
 
Ejemplos:
eliminarDuplicados([4, 4, 4, 2, 2, 3]); // 5
eliminarDuplicados([6, 6, 2, 2, 2, 3]); // 5
eliminarDuplicados([1, 2, 3, 4, 9, 9, 9, 9]); // 5
*/

class Number {
  static int deleteDuplicates(List<int> data) {
    List<int> compareData = data;
    int count = 0;

    for(int i = 0; i < data.length; i++){
      if(data[i] == compareData[i]){
        count++;
        if(count > 2 ){
          count = 0;
          compareData.remove(data[i]);
        }
      }
    }
    // print(compareData);
    return compareData.length;
  }
}

void main(){
  print(Number.deleteDuplicates([1, 2, 3, 4, 9, 9, 9, 9]));
}



