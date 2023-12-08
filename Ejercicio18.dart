/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 18:
Dado un array de usuarios, mostrar sólo los que tengan más de 20 años
y en su nombre tengan la letra "o" y "n"
 
  const usuarios = [
    { nombre: 'Antonio', edad: 20 },
    { nombre: 'Juan', edad: 23 },
    { nombre: 'Pepe', edad: 12 },
    { nombre: 'Raul', edad: 28 },
    { nombre: 'Paco', edad: 38 },
    { nombre: 'Jason', edad: 56}
  ];
 
Ejemplos:
filtrarUsuarios(usuarios);
 
Devuelve: 
[
    { nombre: 'Antonio', edad: 20 },
    { nombre: 'Jason', edad: 56}
]
 
*/

class User {
  List<dynamic> usersFilter(List<dynamic> data) {

    List<dynamic> filteredUsers = [];

    // print('data: ${data[0]['nombre']}');
    
    for(int i = 0; i < data.length; i++){
      if(data[i]['nombre'].contains('n') && data[i]['nombre'].contains('o') && data[i]['edad'] > 20){
        // print('${data[i]['nombre']} si tiene n y o y es mayor a 20');
        filteredUsers.add(data[i]);
      }
      // print(data[i].runtimeType);

      // data[i] = data[i].toString().replaceAll('{', '');
      // data[i] = data[i].toString().replaceAll('}', '');
      // data[i] = data[i].split(' ');
      
      // // if(data[i])
      // cleanText.add(data[i]);
    }
    // print(filteredUsers);
    return filteredUsers;
  }
}

void main() {
  User user = User();
  List<dynamic> data = [
    {'nombre': 'oscar', 'edad': 23},
    {'nombre': 'mildred', 'edad': 21},
    {'nombre': 'antonio', 'edad': 21},
    {'nombre': 'armando', 'edad': 22},
    {'nombre': 'fernando', 'edad': 23},
    {'nombre': 'roman', 'edad': 24},
  ];
  final result = user.usersFilter(data);
  print(result);
}
