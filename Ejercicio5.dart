/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 5:
Dado un array de personas con nombres y apellidos
crear una función para ordenar el array por los apellidos
en orden alfabético
 
Ejemplo:
ordenarPorApellidos([
    "Víctor Robles",
    "Antonio Alcantara",
    "Al Pacino",
    "Robert DeNiro",
    "Brad Pitt",
    "Sylvester Stallone"
]);  
 
*/

class SortWord {
  dynamic ordenaPorApellidos(List personas) {
    var apellidos = personas.map((persona) => persona.split(' ')[1]).toList();
    var nombres = personas.map((persona) => persona.split(' ')[0]);
    // Convierte los nombres a lista
    var nombresExtraidos = nombres.toList();
    //Ordena los apellidos
    var apellidosOrdenados = apellidos.toList();
    apellidosOrdenados.sort();
    // crear array de nombres completos para intentar unirlos
    var nombresOrdenados = [];
    //
    for (int i = 0; i < personas.length; i++) {
      for (int j = 0; j < personas.length; j++) {
        if (apellidosOrdenados[i] == apellidos[j]) {
          nombresOrdenados.add(nombresExtraidos[j]);
        }
      }
    }
    // print('lista de personas: ${personas}');
    for (int i = 0; i < nombresOrdenados.length; i++) {
      personas[i] = nombresOrdenados[i] + ' ' + apellidosOrdenados[i];
    }
    return personas;
  }
}

void main() {
  SortWord sortWord = SortWord();
  // print('orden alfabetico: ${sortWord.ordenaPorApellidos(['Oscar Perez','Mildred Alvarez','Dyatziri Dominguez','Antonio Ocomatl'])}');
  print('orden alfabetico: ${sortWord.ordenaPorApellidos([
        'Alberto Zambrano',
        'Cesar Garcia',
        'Antonio Ocomatl',
        'Oscar Perez',
        'Leonardo Coutino',
        'Bartolome Ramirez',
        'Roberto Santos',
        'Addler Pereyra',
        'Pedro Avendaño',
      ])}');
}
