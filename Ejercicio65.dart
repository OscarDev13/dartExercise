/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 65:
Dado un array de objetos de usuarios, con nombre y fecha,
crea una función que los ordene por fecha.
 
[
  {
    nombre: "Juan",
    fecha: new Date(1984, 7, 10),
  },
  {
    nombre: "Paco",
    fecha: new Date(2017, 8, 12),
  },
  {
    nombre: "Pepe",
    fecha: new Date(1991, 12, 6),
  },
]
 
Ejemplos:
ordenarPorFecha(usuarios)
 
// Devolver solo nombre
*/

class Sort {
  // List<Map<dynamic,dynamic
    List<Map<String, dynamic>> users = [
    {
      'nombre': "Juan",
      'fecha': DateTime(1984, 7, 10),
    },
    {
      'nombre': "Paco",
      'fecha': DateTime(2017, 8, 12),
    },
    {
      'nombre': "Pepe",
      'fecha': DateTime(1991, 12, 6),
    },
  ];

  List<dynamic> sortByDate(){
    users.sort((a,b) => b['fecha'].compareTo(a['fecha']));
    List<dynamic> sortedNames = users.map((user) => user['nombre']).toList();
    return sortedNames;
  }
}

void main() {
  Sort sort = Sort();
  print(sort.sortByDate());
}
