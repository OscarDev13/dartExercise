/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 46:
Crea una función a la que le pasemos una nota y nos de una calificación:
 
0-3: Deficiente
3-5: Insuficiente
5-6: Suficiente
6-7: Bien
7-9: Notable
9-10: Sobresaliente
 
Ejemplos:
calificar(8.2) // Notable
*/

class  Qualification {
  String qualify(double score){
    int index = 0;
    String result = '';
    List<String> notes = ['Deficiente', 'Insuficiente', 'Suficiente', 'Bien', 'Notable', 'Sobresaliente'];
    // print('$score $scoreInt');
    if(score >= 0 && score < 3){
      index = 0;
      result = notes[index];
    }
    else if(score >= 3 && score < 5 ){
      index = 1;
      result=notes[index];
    }
    else if(score >= 5 && score < 6){
      index = 2;
      result=notes[index];
    }
    else if(score >= 6 && score < 7){
      index = 3;
      result=notes[index];
    }
    else if(score >= 7 && score < 9){
      index = 4;
      result=notes[index];
    }
    else if(score >= 9 && score < 10){
      index = 5;
      result = notes[index];
    }
    else{
      result = 'No existe esa calificacion';
    }


    return result;
  }


}

void main(){
  Qualification qualification =  Qualification();
  print(qualification.qualify(10.1));
}