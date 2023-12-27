/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 20:
Crea una función que ordene un array de objetos en base a las propiedades
que le pase por parametro.
 
  const usuarios = [
    { nombre: 'Antonio', edad: 20 },
    { nombre: 'Juan', edad: 23 },
    { nombre: 'Pepe', edad: 12 },
    { nombre: 'Raul', edad: 28 },
    { nombre: 'Paco', edad: 38 },
    { nombre: 'Jason', edad: 56}
  ];
 
 
Ejemplos:
ordenarObjetos(usuarios, "edad");
 
*/

class Words {
  List<dynamic> sortData(Array data, Text description) {
    Sort sort = Sort();
    List<dynamic> result = [];
    if(description.description == 'name'){
      result = sort.sortByName(data.data);
    }else if(description.description == 'age'){
      result = sort.sortByAge(data.data);
    }else {
      print('Invalid option');
    }
    return result;
  }
}

class Sort {
  List<dynamic> sortByName(List<dynamic> data) {
    print('sort by name');
    for(int i = 0; i < data.length; i++){
      print(data[i]['name']);
    }
    return data;
  }

  List<dynamic> sortByAge(List<dynamic> data) {
    print('sort by age');
    for(int i = 0; i < data.length; i++){
      print(data[i]['age']);
    }
    return data;
  } 
}

class Array {
  List<dynamic> data = [];
  Array(this.data);
}

class Text {
  String? description = '';
  Text(this.description);
}

void main() {
  List<dynamic> data = [
    {'name': 'Antonio', 'age': 23},
    {'name': 'Oscar', 'age': 25},
    {'name': 'Marcus', 'age': 25}
  ];
  String option = 'name';

  Text text = Text(option);
  Array array = Array(data);

  Words words = Words();
  final result = words.sortData(array, text);
  print(result);
}
