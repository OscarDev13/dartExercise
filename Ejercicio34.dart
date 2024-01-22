/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 34:
Crea una función a la cual le pase un array y me devuelva 
un objeto con los elementos agrupados
 
Ejemplos:
agrupar([7.2, 5.3, 7.4], Math.floor)  
Devuelve: { 7: [7.2, 7.4], 5: [5.3] }
 
agrupar(['uno', 'dos', 'tres', 'cuatro'], 'length') 
Devuelve: { 3: ['uno', 'dos', 'tres'], 6: ['cuatro'] }
 
agrupar([{nombre: "victor", edad: 33}, {nombre: "paco", edad: 44}], 'edad') 
Devuelve: { 33: [{edad: 33}], 44: [{edad: 44}] }
 
// */
// class Sort {
//  static group(List<dynamic> data, dynamic option){
//   if(option == 'Math.floor'){
//     groupByFloor(data, option);
//   }else if(option == 'length'){
//     groupByLength(data, option);
//   }else if(option == 'edad'){
//     groupByAge(data, option);
//   }else{
//     print('Invalid option');
//   }
//  }

//  static groupByFloor(List<dynamic> data, dynamic option){

//  }

//  static groupByLength(List<dynamic> data, dynamic option){

//  }

//  static groupByAge(List<dynamic> data, dynamic option){

//  }

// }

// void main(){
//   Sort.group([7.2, 5.3, 7.4],'Math.floor');
//   Sort.group(['uno', 'dos', 'tres', 'cuatro'], 'length');
//   Sort.group([{'nombre': "victor", 'edad': 33}, {'nombre': "paco", 'edad': 44}], 'edad');
//   // Sort.group([], 'option');
// }

class Sort {
  static Map<dynamic, List<dynamic>> agrupar(List<dynamic> lista, dynamic clave) {
    Map<dynamic, List<dynamic>> resultado = {};
    for (var elemento in lista) {
      var claveAgrupacion = (clave is Function) ? clave(elemento) : elemento[clave];
      resultado.putIfAbsent(claveAgrupacion, () => []).add(elemento);
    }
    return resultado;
  }
}

void main() {
  print(Sort.agrupar([7.2, 5.3, 7.4], (num) => num.floor())); // Devuelve: { 7: [7.2, 7.4], 5: [5.3] }
  print(Sort.agrupar(['uno', 'dos', 'tres', 'cuatro'], (str) => str.length)); // Devuelve: { 3: ['uno', 'dos', 'tres'], 6: ['cuatro'] }
  print(Sort.agrupar([{'nombre': "chuy", 'edad': 33},{'nombre': "victor", 'edad': 33},{'nombre': "paco", 'edad': 44},], 'edad')); // Devuelve: { 33: [{nombre: "victor", edad: 33}], 44: [{nombre: "paco", edad: 44}] }
}
