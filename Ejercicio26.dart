/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 26:
Optimizar el gasto en mi gasolinera favorita.
 
Tiene dos opciones:
 
- Gasolina individual: Cuesta 10 euros por cada llenado.
- Tarjeta de socio: Cuesta 90 euros anuales pero cada vez que llenas 
te cuesta 8.2 euros el tanque pagas sólo el 78% del precio del llenado.
 
Cada vez que llenas el tanque, se paga el 78% del precio 
del llenado que pagaste la última vez hasta llegar a un descuento maximo
del 50%. Acumula el descuento (0.78 ** 3).
 
Hacer una función que, al pasarle las veces que voy a llenar el tanque, 
me diga si vale la pena comprar la tarjeta de socio o no.
 
Ejemplos:
deboSerSocio(15);
 
Devuelve: 
Como usuario casual te sale a: 150        
Como socio te sale a: 154.68487999999994 
No te sale a cuenta ser socio ser socio  
 
*/


import 'dart:math';

class User {
  static dynamic shouldBePartner(int quantity){
    double numero = 5;
    dynamic resultado = pow(numero, 2);
    
    //calculate single fill
    dynamic singleFill = 10 * quantity;

    // Calculate fill like a partner
    dynamic partnerFill = 90;

    // calculate total prince filled like partner
    // bucle 1 to total of times
    for (int i = 1; i <= quantity; i++){
      print(i);
      var discount = (pow(0.78, i));
      
      // lock discount to a max of 50%
      if(discount <= 0.50){
        discount = 0.50;
      }

      // update variable partnerFill and sum values
      partnerFill += 8.2 * discount;
    }

    // show result string
    var result = 'Como usuario casual el valor es: ${singleFill}\nComo socio, el valor es: ${double.parse(partnerFill.toStringAsFixed(2))}';

    if(partnerFill < singleFill){
      result += '\nEs mas rentable ser socio';
    }else{
      result += '\nNo es rentable ser socio';
    }
                      // Recorta a 2 decimales el String y lo parsea a double
    // return [singleFill, double.parse(partnerFill.toStringAsFixed(2))];
    return result;
  }
}

void main() {
  print(User.shouldBePartner(10));
}
























