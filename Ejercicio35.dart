/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 35:
Crea un programa que dados dos arrays de lenguajes frontend y backend
y dado un parametro que sera un array con los nombres de dos lenguajes
nos diga si son compatibles o no.
 
Solo pueden ser compatibles lenguajes front con uno de back
 
Ejemplos:
sonCompatibles(["HTML", "PHP"])   // true
sonCompatibles(["PHP", "PYTHON"]) // false
 
*/
 class Compatible {
  static bool theyAreCompatible([dynamic languaje1, dynamic languaje2]){
    // define two arrays with front and back langujes
    const frontend = ['HTML','HTML5', 'XHTML', 'CSS', 'CSS3', 'JAVASCRIPT'];
    const backend = ['PHP', 'PYTHON', 'RUBY', 'NODE','C#','RUST', 'GO', 'GOLAND'];

    if(languaje1.runtimeType == List<String>){
      var copy = languaje1;
      languaje1 = copy[0];
      languaje2 = copy[1];
    }
    // check if one languahe is front and the other is back
    if((frontend.contains(languaje1.toUpperCase()) && backend.contains(languaje2.toUpperCase())) 
    || 
    (backend.contains(languaje1.toUpperCase()) && frontend.contains(languaje2.toUpperCase()))){
      return true;
    }
    return false;

    // check if not fulfill return false

  }
 }

 void main(){
  print(Compatible.theyAreCompatible(["HTML", "PHP"]));  
  print(Compatible.theyAreCompatible(["PHP", "PYTHON"]));
 }