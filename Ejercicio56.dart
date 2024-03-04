/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 56:
Crea una función que tome un array de objetos de peliculas y 
una clave como parametros y devuelva un objeto donde cada valor de 
la clave es un array con todos los objetos que tienen ese valor 
para la clave especificada.
 
  const peliculas = [
    { titulo: 'E.T.', anio: 1982 },
    { titulo: 'Regreso al futuro', anio: 1985 },
    { titulo: 'Cazafantasmas', anio: 1984 },
    { titulo: 'Dirty Dancing', anio: 1987 },
    { titulo: 'Terminator 2: El juicio final', anio: 1991 },
    { titulo: 'Parque Jurásico', anio: 1993 },
    { titulo: 'Forrest Gump', anio: 1994 },
  ];
 
Ejemplos:
agruparPor(peliculas, 'anio')
 
Devuelve:
 {
     1982: [{ titulo: 'E.T.', anio: 1982 }],
     1985: [{ titulo: 'Regreso al futuro', anio: 1985 }],
     1984: [{ titulo: 'Cazafantasmas', anio: 1984 }],
     1987: [{ titulo: 'Dirty Dancing', anio: 1987 }],
     1991: [{ titulo: 'Terminator 2: El juicio final', anio: 1991 }],
     1993: [{ titulo: 'Parque Jurásico', anio: 1993 }],
     1994: [{ titulo: 'Forrest Gump', anio: 1994 }]
 }
 
*/

class Movie {
  Map<dynamic, dynamic> groupBy(dynamic movies, String decision){
    // print('${movies[0]['anio']}');
    dynamic result = {};
    for(dynamic movie in movies){
      // print(movie['anio']);
      if(!result.containsKey(movie['anio'])){
        result[movie['anio']] = [];
      }
      result[movie['anio']].add([{'titulo': "'${movie['titulo']}'", 'anio':movie['anio']}]);
    }
    // print(result);
    return result;
  } 
}

void main(){

  Movie movie = Movie();
  const movies = [
    { 'titulo': 'E.T.', 'anio': 1982 },
    { 'titulo': 'Regreso al futuro', 'anio': 1985 },
    { 'titulo': 'Cazafantasmas', 'anio': 1984 },
    { 'titulo': 'Dirty Dancing', 'anio': 1987 },
    { 'titulo': 'Terminator 2: El juicio final', 'anio': 1991 },
    { 'titulo': 'Parque Jurásico', 'anio': 1993 },
    { 'titulo': 'Forrest Gump', 'anio': 1994 },
    { 'titulo': 'Forrest Gump 2: Renacer', 'anio': 1994 },
  ];

  print(movie.groupBy(movies, 'anio'));
}