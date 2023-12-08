/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal.
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 3:
Dadas dos fechas, crea una función que me proporcione la diferencia de dias
entre ellas
 
Ejemplo:
diferenciaDeDias('Dec 1, 2023', 'Dec 24, 2023');  // Salida: 23
 
*/

class DateConvert {
  dynamic diferenceOfDays(String date1, String date2){
    // Date.parse(date1);
    // print(date1 +' '+ date2);
    // print(isDate(date1));
    // print(isDate(date2));
    // Comprobar que ambas fechas tengan un formato correcto
    
    // Obtener la diferencia en milisegundos entre las dos fechas

    // Dividir la diferencia en milisegundos entre el numero de milisegundos que tiene un dia y redondearla para sacar los dias
  }

  // bool isDate(String dateString){
  //   try{
  //     DateTime.parse(dateString);
  //     return true;
  //   }catch(e){
  //     return false;
  //   }
  // }
}

void main(){
  DateConvert dateconvert = DateConvert();
  dateconvert.diferenceOfDays('Dec 1, 2023', 'Dec24, 2023');
}