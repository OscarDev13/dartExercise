/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 60:
Programa que calcule el beneficio de un producto despues de restarle:
- 20% de descuento
- 21% de iva
- 15% de irpf
 
*/

class Product {
  double calculateSubtotal( double price ){
    double total = 0;
    double discount = calculateDiscount(price);
    double iva = calculateIVA(discount);
    double irpf = calculateIRPF(iva);
    total = irpf;
    return total;
  }
}

  double calculateDiscount(double price){
    const double discount =  0.20;
    double amountToDiscount = price * discount;
    double subtotal = price - amountToDiscount;
    return subtotal;
  }

  double calculateIVA( double discount ){
    const double iva = 0.21;
    double amountToDiscount = discount * iva;
    double subtotal = discount - amountToDiscount;
    return subtotal;
  }

  double calculateIRPF( double iva ){
    const double irpf = 0.15;
    double amountToDiscount = iva * irpf;
    double subtotal =  iva - amountToDiscount;
    return subtotal;
  }

void main(){
  Product product = Product();
  print(product.calculateSubtotal(995.0));
}