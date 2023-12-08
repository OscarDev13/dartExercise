/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 13:
Crea una funcion que calcule el area de un cuadrado, un rectangulo o un triangulo
 
Ejemplos:
calcularAreaPoligono({ tipo: 'triangulo', base: 6, altura: 9 }); 
 
Devuelve: 27
 
*/

class GeometricShape {

  dynamic  returnLineError(){
    String currentStackTrace = StackTrace.current.toString();
    List<String> traceLines = currentStackTrace.split("\n");
    String relevantLine = traceLines[1];
    return relevantLine;
  }

  void calculateAreaPolygon(Map<String, dynamic> data) {


    List<String> poligonsOptions = ['cuadrado', 'triangulo', 'rectangulo'];
    if (data['tipo'] == poligonsOptions[0]) {
      print(calculateAreaSquare(data['base']));
    } else if (data['tipo'] == poligonsOptions[1]) {
      print(calculateAreaTriangule(data['base'], data['altura']));
    } else if (data['tipo'] == poligonsOptions[2]) {
      print(calculateAreaRectangle(data['base'], data['altura']));
    } else {
      print(
          'Incorrect value of data[tipo]: ${data['tipo']}, error in line: ${returnLineError()}');
    }
  }

  int calculateAreaSquare(int width) => width * width;

  double calculateAreaTriangule(int width, int heigth) => (width * heigth) / 2;

  int calculateAreaRectangle(int width, int heigth) => width * heigth;
}

void main() {
  GeometricShape shape = GeometricShape();
  shape.calculateAreaPolygon({'tipo': 'triangulo', 'base': 2, 'altura': 2});
}
