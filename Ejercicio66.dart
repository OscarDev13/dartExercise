/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 66:
Crea una función que pueda filtrar la información de los superhéroes por afiliación. 
Puedes hacer que la función tome una afiliación como parámetro 
y muestre la información de los superhéroes que pertenecen a esa afiliación.
 
Ejemplos:
filtrarPorAfiliacion('Crimen organizado')
 
*/

class Filter {

  var dcPeople = {
    'Superman':{
      'nombreReal':'Clark Kent',
      'poderes':['Superfuerza', 'Vuelo', 'Vision laser', 'Invulnerabilidad'],
      'afiliacion':'Justice League'
    },
    'Batman':{
      'nombreReal':'Bruce Wayne',
      'poderes':['Inteligencia sobresaliente', 'Maestro en artes marciales y tacticas'],
      'afiliacion':'Justice League'
    },
    'Wonder woman':{
      'nombreReal':'Diana Prince',
      'poderes':['Superfuerza', 'Agilidad sobresaliente', 'Invulnerabilidad', 'Lasso'],
      'afiliacion':'Justice League'
    },
    'Flash':{
      'nombreReal':'Barry Allen',
      'poderes':['Supervelocidad', 'Agilidad sobresaliente'],
      'afiliacion':'Justice League'
    },
  };

  void filterByAffiliation() {
    var result = [];

    // for
  }
}