/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 24:
Crea una función a la cual le pasemos un array de nombres de archivo
y nos devuelva un array con esos mismos archivos, pero si hay alguno
duplicado debe estar númerado con un (numero de repeticiones)
como hacen los sistemas operativos.
 
Ejemplos:
renombrarArchivos(["nombre", "apellido", "nombre", "nombre"]);
 
Devuelve: 
[ 'nombre', 'apellido', 'nombre(1)', 'nombre(2)' ]
 
*/

// class Fields {
//   static List<dynamic> renameFields(List<String> fields){
//     int index = 0;
//     int counter = 0;
    
//     // fields.map((e) {
//     //   print(e);
//     //   // print(e[index]),
//     //   index++;
//     // });
//     fields.forEach((element) => {
//       print(element),
//       counter++,
//       if(element == fields[index]){
//         // print('position: $index - ${element} - ${fields[index]}')
//         if(index != 0){
//           fields[index] = element+'(${counter})'
//         }
//       },
//       index++,
//       counter = 0
//     });
//     return fields;
//   } 

// }

// void main(){
//   // Fields fields = Fields();
//   print(Fields.renameFields(["nombre", "apellido", "nombre", "nombre"]));
// }

class Fields {
  static List<String> renameFiles(List<String> data){
    Map<String,dynamic> count = {};
    List<String> result = [];
    for(String name in data){
      if(count.containsKey(name)){
        count[name] = count[name] + 1;
        // result.add(value)
        result.add('${name}(${count[name]})');
        // print('${name}(${count[name]})');
        // print(name); 
      }else{
        // print('no esta');
        count[name] = 0;
        result.add(name);
      }
      // count[name] = 1;
      // print(count[name]);
      // print(name);
    }
    // print(count);
    return result;
  }
}

void main(){
  print(Fields.renameFiles(["nombre", "apellido", "nombre", "nombre", "apellido"]));
}

 


