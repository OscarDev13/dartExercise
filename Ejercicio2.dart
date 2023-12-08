/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal.
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 2:
Dada una ruta absoluta de un archivo (de un sistema linux o basado en unix)
crear una función que la simplifique
 
Ejemplo:
simplificarRuta("/home/");             // Salida: /home
simplificarRuta("/x/./y/../../z/");    // Salida: /z
simplificarRuta("/../");               // Salida: /
simplificarRuta("/home//pruebas/");    // Salida: /home/pruebas
*/

class Route {
  // Crear variable pila para almacenar las partes de la ruta
  var pila = [];
  dynamic simplificateRoute(String route) {
    print('--------------------------------------------------');
    // Dividir la ruta en sus diferentes partes utilizando el separador /
    var partes = route.split('/');
    print('partes: ${partes}, length: ${partes.length}');
    // Recorrer cada parte
    for (var parte in partes.toList()) {
      print('evalua parte: ${parte}');
      // Si la parte es .. quita el ultimo elemento
      if (parte == '..') {
        // pila.removeLast();
        print('pila antes de ser limpiada');
        print(pila);
        pila.clear();
        print('pila despues de ser limpiada');
        print(pila);
      } else if (parte != '.' && parte != '') {
        // Si la parte es diferente a '.' a '..' o a unca cadena vacia, entonces guarda esa en la pila
        print('the value ${parte} has been added to pila');
        pila.add(parte);
      }
    }
    return '/' + pila.join('/'); // Add / to pila
  }
}

 void main() {
  Route route = Route();
  print(route.simplificateRoute('/home/'));
  print(route.simplificateRoute('/x/./y/../../z/'));
  print(route.simplificateRoute('/../'));
  print(route.simplificateRoute('/home/../pruebas/'));
}
