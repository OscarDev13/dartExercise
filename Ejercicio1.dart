/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal.
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 1:
Dado un array o un objeto de superhéroes de Marvel, haz un programa que pueda
mostrar la información de un superheroe.
 
Y añade una capacidad de buscar la información de varios superhéroes a la vez.
 
Ejemplo:
mostrarInformacionSuperheroe('Iron Man');
 
Salida:
Nombre real: Tony Stark
Poderes: Tecnología avanzada, Movilidad aérea
Equipo: Los vengadores
 
Ejemplo 2: 
mostrarInformacionSuperheroes([array de nombres]]);
 
Salida:
Muestra la información de todos los superheroes
 
*/
 
class Hero {
   List<String> name = ['Iron Man', 'Spider Man','Hulk', 'Thor',
'Captain America'];
}

class Processor{
   Map<String,dynamic> information = {
     'Iron Man': {
       'name':'Robert Downey Jr',
       'power':'Fly and shot',
       'team':'Avengers'
     },
     'Spider Man': {
       'name' : 'Tom Holland',
       'power':'Fly',
       'team':'Avengers'
     },
     'Hulk': {
       'name':'Mark Ruffalo',
       'power':'Strong',
       'team':'Avengers',
       'personal_info':{
         'age':35,
         'rfc':'32165498'
       }
     },
     'Thor': {
       'name': 'Chris Hemsworth',
       'power':'Strong',
       'team':'Avengers'
     },
     'Captain America' : {
       'name' : 'Chris Evans',
       'power':'Strong',
       'team':'Avengers'
     }
   };

   void showSuperHeroInfo(dynamic name){
     if(information.containsKey(name)){
       print('Nombre: ${name}\nNombre real: ${information[name]['name']}\nPoderes: ${information[name]['power']}\nEquipo: ${information[name]['team']}');
       print('---------------------------');
     }else{
       print('El Superhero: ${name}, no existe dentro de la lista');
     }
//     print(information['Hulk']['personal_info']['age']); // Access to a value of the map
   }

   void showSuperHerosInfo(List<String> names){
//     for(MapEntry information in information.entries){
// //       print('info: ${information.value['name']}');
//       print('info: ${information.value}');
//     }
    //  for(int i = 0; i < names.length; i++){
    //     String name = names[i];
    //     if(information.containsKey(name)){
    //               // print(information['Hulk']['personal_info']['age']);
    //     print('Nombre: ${names[i]}\nNombre real: ${information[name]['name']}\nPoderes: ${information[name]['power']}\nEquipo: ${information[name]['team']}');
    //     print('---------------------------------');
    //     // print('Nombre real: ${information[name]['personal_info']}');
    //     //  print('Nombre: ${superheros[i]}\n{Nombre real: ${superheros[i]['name']}');
    //     }else{
    //       print('Superhero: ${names[i]}, doesnt exist');
    //     }
    //  }
    names.forEach((nombre) => showSuperHeroInfo(nombre));
   }
}

void main (){
   Processor processor = Processor();
//   processor.printDetails('Spider Man');
//   processor.showSuperHeroInfo('');
   processor.showSuperHerosInfo(['Iron Man', 'Spider Man','Hulk','Thor', 'Captain America','i','oscar','otro']);

}





