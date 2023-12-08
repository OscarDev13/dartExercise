// Redes neuronales: perceptrón básico con funciones AND y OR
import 'dart:math';

void main() {
  // devuelve valor double entre -1 y +1 para generar pesos aleatorios
  double _random() {
    var random = Random();
    var positivo = random.nextBool();
    var randomDouble = random.nextDouble();
    return positivo ? randomDouble : -1 * randomDouble;
  }

  // tabla de verdad de la función AND
  var tabla = [
    [1, 1, 1],
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 0]
  ];
  // tabla de verdad de la función OR
  /* var tabla = [
    [1, 1, 1],
    [1, 0, 1],
    [0, 1, 1],
    [0, 0, 0]
  ]; */
  var pesos = List.generate(3, (int index) => _random());
  int salida;
  var iteraciones = 0;
  var tasaAprende = 0.3;

  // proceso de aprendizaje
  var aprendiendo = true;
  while (aprendiendo) {
    aprendiendo = false;
    iteraciones++;
    for (var indexInput = 0; indexInput < tabla.length; indexInput++) {
      var valor = (tabla[indexInput][0] * pesos[0]) +
          (tabla[indexInput][1] * pesos[1]) +
          pesos[2];
      salida = valor > 0 ? 1 : 0;
      /* busca nuevos pesos aleatorios
        if (salida != tabla[i][2]) {
        for (var i = 0; i < pesos.length; i++) {
          pesos[i] = _random();
        }
        aprendiendo = true;
      } */
      var error = tabla[indexInput][2] - salida;
      if (error != 0) {
        for (var indexPeso = 0; indexPeso < pesos.length; indexPeso++) {
          var valorInput = indexPeso == 2 ? 1 : tabla[indexInput][indexPeso];
          // busca pesos con la fórmula de Frank Rosenblatt
          pesos[indexPeso] = pesos[indexPeso] + tasaAprende * error * valorInput;
        }
        aprendiendo = true;
      }
    }
  }

  // muestra resultados
  print('Resultados después de $iteraciones iteraciones');
  for (var i = 0; i < pesos.length; i++) {
    print('Peso ${i + 1}: ${pesos[i]}');
  }
  var resultado = 0;
  print('Entradas\tEsperado\tResultado');
  print('-' * 41);
  for (var i = 0; i < tabla.length; i++) {
    var valor =
        (tabla[i][0] * pesos[0]) + (tabla[i][1] * pesos[1]) + pesos[2];
    salida = valor > 0 ? 1 : 0;
    print('  ${tabla[i][0]} y ${tabla[i][1]}'
        '\t\t   ${tabla[i][2]}'
        '\t\t   $salida');
    if (salida == tabla[i][2]) resultado++;
  }
  print('PERCEPTRÓN ${(resultado * 100) ~/ 4}% OK');
}