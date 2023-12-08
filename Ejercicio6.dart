/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 6:
Dado un año actual, crea un programa que me muestre 
los años bisiestos que habrá en los proximos 30 años
 
Ejemplo:
bisiestos(2023);
 
// Salida:
2024
2028
2032
2036
2040
2044
2048
2052
 
*/

class Year {
  List<dynamic> bisiestos(int year) {
    // Se calcula el limite, los proximos 30 años a partir del año proporcionado
    var limit = year + 30;
    // se crea la lista donde se van a guardar los años que son biciestos
    List<dynamic> years = [];
    // se crea el ciclo para validar de acuerdo al año proporcionado
    for(int i = year; i <= limit; i++){
      if(year %400 == 0){
        years.add(year);
      }else if((year %4 == 0) && (year %100 != 0)){
        years.add(year);
      }else{
        // print('$year no es bisiesto');
      }
      year++;
    }
    return years;
  }
}

void main() {
  Year year = Year();
  // print(year.bisiestos(2023));
  year.bisiestos(2019).forEach((year) => print(year));
}
