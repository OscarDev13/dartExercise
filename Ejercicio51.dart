/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 51:
Crea una función que dibuje un diamante de asteriscos.
 
Ejemplos:
generarDiamante(5);
 
Devuelve: 
  *
 *** 
*****
 *** 
  *  
 
*/
 

class Generate {
  void generateDiamond(int limit){

    if(limit %2 == 0){
      limit--;
    }

    var half = (limit ~/ 2);

    print('$limit $half');

    for(int i = 0; i < limit; i++) {
      String row = '';
      var spaces = (half - i).abs();

      for(int currentSpace = 0; currentSpace < spaces; currentSpace++){
        row+=' ';
      }


      for(int currentAsteric = 0; currentAsteric < limit - (spaces * 2); currentAsteric ++){
        row += '*';
      }
      print(row);
    }

    // for(int i = 0; i < limit; i++){
    //   // print('');
    //   for(int i = 0; i < limit; i++){
    //     print("*");
    //   }
    // }
  }
}

void main(){
  Generate generate = Generate();
  generate.generateDiamond(10);
}