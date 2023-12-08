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

    for (int i = 0; i < personas.length; i++) {
      for (int j = 0; j < personas.length; j++) {
        if(apellidosOrdenados[i] == apellidos[j]){
          // print('i-${apellidosOrdenados[i]} - j-${apellidos[j]}');
          // posiciones.add(j);
          nombresOrdenados.add(nombresExtraidos[j]);
        }
      }
    }
    // for(int i = 0; i < apellidosOrdenados.length; i++){
    //   for(int k = 0; k < apellidosOrdenados.length; k++){
    //     nombresConApellidos.add(nom)
    //   }
    // }

    //Retorna los apellidos
    // print('${posiciones}');
    // print('nombres extraidos: ${nombresExtraidos}');
    print('lista de personas: ${personas}');
    // print('nombres ordenados: ${nombresOrdenados}');
    // print('apellidos: ${apellidos}');
    // return apellidosOrdenados;
    for (int i = 0; i < nombresOrdenados.length; i++){
      personas[i] = nombresOrdenados[i] + ' ' +apellidosOrdenados[i]; 
    }
    return personas ;
  }

}

void main() {
  SortWord sortWord = SortWord();
  // print('orden alfabetico: ${sortWord.ordenaPorApellidos(['Oscar Perez','Mildred Alvarez','Dyatziri Dominguez','Antonio Ocomatl'])}');
  print('orden alfabetico: ${sortWord.ordenaPorApellidos(['Cesar Garcia','Antonio Ocomatl','Oscar Perez','Leonardo Coutino','Bartolome Ramirez', 'Roberto Santos','Addler Pereyra','Pedro Avendaño'])}');

}
