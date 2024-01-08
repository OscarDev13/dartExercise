/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 25:
Crea una función a la cual le pasemos un array de nombres de archivo
y nos devuelva un array con esos mismos archivos, pero si hay alguno
duplicado debe estar númerado con un (numero de repeticiones)
como hacen los sistemas operativos.
 
Ejemplos:
renombrarArchivos(["nombre.jpg", "apellido.doc", "nombre.png", "nombre.png", "nombre.jpg", "nombre.jpg"]);
 
Devuelve: 
[ 'nombre.jpg', 'apellido.doc', 'nombre.png', 'nombre(1).png', 'nombre(1).jpg', 'nombre(2).jpg']
 
*/

class Fields {
  static List<String> renameFields(List<String> data) {
    Map< String, dynamic > count = {};
    List< String > result = [];
    for(String name in data){
      if(count.containsKey(name)){
        count[name] += 1;
        result.add('${name.split('.')[0]}(${count[name]}).${name.split('.')[1]}');
      }
      else{
        count[name] = 0;
        result.add(name);
      }
      // print(name);
      // print(name.split('.'));
      // print(name.split('.')[0]);
      // print('${name.split('.')[0]}(${1}).${name.split('.')[1]}');
      // print(name.split('.')[1]);
      // if(count.containsKey(name)){
      //   count[name] += 1;
      //   print(name.split('.'));
      //   // result.add('${name}')
      // }
    }
    return result;
  }
}

void main(){
  print(Fields.renameFields(["nombre.jpg", "apellido.doc", "nombre.png", "nombre.png", "nombre.jpg", "nombre.jpg"]));
}