/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 50:
Crea una función que dada una temperatura la pase a grados
celsius o grados fahrenheit.
 
Ejemplos:
convertirTemperatura('29°C')  // Devuelve: "84.20°F"
convertirTemperatura('77°F')  // Devuelve: "25.00°C"
*/
 
class Temperature {
  String temperatureConvert(String temperature){
    List<String> temperatureCharacters = temperature.split('');
    dynamic degrees = int.parse(temperature.split('°')[0]);
    String result = '';
    // print(degrees);
    if(temperatureCharacters[temperature.length - 1] == 'F'){
      degrees = convertToCelcius(degrees);
      result = '${degrees}°C';
    }else if(temperatureCharacters[temperature.length - 1] == 'C'){
      degrees = convertToFarenheit(degrees);
      result = '${degrees}°F';
    }else{
      result = 'Formato incorrecto ';
    }
    // print(temperatureCharacters[temperature.length - 1]);
    return result;
  }

  dynamic convertToCelcius(int farenheitDegrees)  => ((farenheitDegrees - 32) / 1.8).toStringAsFixed(2);

  dynamic convertToFarenheit(int celciusDegrees)  => ((celciusDegrees * 1.8) + 32).toStringAsFixed(2);
}

void main(){
  Temperature temperature = Temperature();
  print(temperature.temperatureConvert('29°C'));
  print(temperature.temperatureConvert('78°F'));
  print(temperature.temperatureConvert('450°F'));
  print(temperature.temperatureConvert('32°K'));
}