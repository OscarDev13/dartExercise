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
    'Joker':{
      'nombreReal':'Unknown',
      'poderes':['Manipulacion psicologica', 'Inteligencia sobresaliente'],
      'afiliacion':'Crimen organizado'
    },    
    'Penguin':{
      'nombreReal':'Oswald Chesterfield Cobblepot',
      'poderes':['Inteligencia sobresaliente', 'Manipulacion'],
      'afiliacion':'Crimen organizado'
    },    
    'Harley Queen':{
      'nombreReal':'Harleen Quinzel',
      'poderes':['Agilidad sobresaliente', 'Expertise en artes marciales'],
      'afiliacion':'Crimen organizado'
    },    
  };

  dynamic filterByAffiliation(String affiliation) {
    var result = [];
    var info;

    for (var dcPerson in dcPeople.keys){
      // print('${dcPerson}');
      info = dcPeople[dcPerson];
      // print(info['afiliacion'].toLowerCase());
      // print(affiliation.toLowerCase());
      if(info['afiliacion'].toLowerCase() == affiliation.toLowerCase()){
        // print('$dcPerson ${info['nombreReal']} ${info['poderes']}');
        result.add({
          'nombre':dcPerson,
          'nombreReal':info['nombreReal'],
          'poderes':info['poderes']
        });
      }
    }
    // print(info);
    return result;
  }
}

void main(){
  Filter filter = Filter();
  print(filter.filterByAffiliation('Justice League'));
}