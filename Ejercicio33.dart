/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 33:
Crea una función a la cual le pase un string y lo convierta 
a un listado en un objeto que cuente el número de elementos.
 
Las palabras no deben incluir guiones ni guiones bajos.
 
Ejemplos:
contarElementos("pc -ordenador _computadora consola- ps5 theLastOfUs ordenador"); 
 
Devuelve: 
{ pc: 1, ordenador: 2, computadora: 1, consola: 1, ps5: 1, theLastOfUs: 1 }
*/

class Words {
  static Map<String, dynamic> countElements( String data ){
    // List<String> filteredData = [];
    String cleanedData = '';
    Map<String, dynamic> result = {};
    // List<int> count = [];
    for(int i = 0; i < data.length; i++){
      if(data[i] != '-' && data[i] != '_'){
        // print(data[i]);
        // filteredData.add(data[i]);
        cleanedData += data[i];
      }
    }
    var data2 = cleanedData.split(' ');
    // print(data2);
    for( String index in data2){
      if(result.containsKey(index)){
        result[index] += 1;
      }else{
        result[index] = 1;
      }
    }
    // print(result.split(' '));
    // for(int i = 0; i < filteredData.length; i++){
    //   print(filteredData[i]);
    // }
    // print(res);
    return result;
  }
}



void main(){
  print(Words.countElements("pc -ordenador _computadora consola- ps5 ps5_ theLastOfUs ordenador consola- -theLastOfUs"));
}