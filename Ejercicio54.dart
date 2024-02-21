/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 54:
En la película de Avatar, existen diferentes tribus de Na'vi 
que habitan Pandora. Cada tribu tiene una habilidad especial y 
un valor de poder entre 1 y 5:
 
Tribus pacifistas: Omaticaya (1), Tawkami (2), Kekunan (3)
Tribus guerreras: Rda (2), Hometree (3), Toruk Makto (5)
 
Crea un programa que calcule el resultado de una guerra 
entre dos ejércitos de Na'vi. 
 
Ejemplos:
calcularResultadoGuerra(tribusBuenas, tribusMalas);
 
Devuelve:
"¡Gana el mal!"
*/

// const tribusBuenas = [
//     { nombre: { valor: 1, nombre: "Omaticaya" }, cantidad: 10 },
//     { nombre: { valor: 2, nombre: "Tawkami" }, cantidad: 5 },
//     { nombre: { valor: 3, nombre: "Kekunan" }, cantidad: 13 },
// ];

// const tribusMalas = [
//     { nombre: { valor: 2, nombre: "Rda" }, cantidad: 10 },
//     { nombre: { valor: 3, nombre: "Hometree" }, cantidad: 5 },
//     { nombre: { valor: 5, nombre: "Toruk Makto" }, cantidad: 1 },
// ];

class War {
  String calculateWarResult( List<Map<String, dynamic>> goodTribes, List<Map<String, Object>>badTribes ) {
    // int result = 0;
    // int sum;
    // for(int i = 0; i < goodTribes.length; i++){
    //   print('${goodTribes[i]['nombre']['valor']} ${goodTribes[i]['cantidad']}');
    //   sum = goodTribes[i]['nombre']['valor'] + goodTribes[i]['cantidad'];
    //   result = result + sum;
    // }
    // // print(goodTribes);
    // // print(badTribes);
    // print(result);
    int resultSumGoodTribe = sumTribes(goodTribes);
    int resultsumBadTrube = sumTribes(badTribes);
    String result = '';
    if(resultSumGoodTribe > resultsumBadTrube){
      result = '¡Gana el bien!';
    }else if(resultsumBadTrube > resultSumGoodTribe){
      result = '¡Gana el mal!';
    }else{
      result = '¡Empate!';
    }
    return result;
  }

  int sumTribes(List<Map<String, dynamic>> tribe ){
    int result = 0, sum = 0;
    for(int i = 0; i < tribe.length; i++){
      sum = tribe[i]['nombre']['valor'] + tribe[i]['cantidad'];
      result += sum;
    }
    return result;
  }
}

void main() {
  War war = War();
    List<Map<String,dynamic>> goodTribes = [
      {
        'nombre': {'valor': 2, 'nombre': "Rda"},
        'cantidad': 10
      },
      {
        'nombre': {'valor': 3, 'nombre': "Hometree"},
        'cantidad': 5
      },
      {
        'nombre': {'valor': 5, 'nombre': "Toruk Makto"},
        'cantidad': 1
      },
    ];

        var badTribes = [
      {
        'nombre': {'valor': 2, 'nombre': "Rda"},
        'cantidad': 10
      },
      {
        'nombre': {'valor': 3, 'nombre': "Hometree"},
        'cantidad': 5
      },
      {
        'nombre': {'valor': 5, 'nombre': "Toruk Makto"},
        'cantidad': 1
      },
    ];
  print(war.calculateWarResult(goodTribes, badTribes));
}
