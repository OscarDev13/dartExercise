/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 57:
Crea una función que convierta cualquier frase a una SEO slug.
 
Una seo slug es un fragmento de url optimizado para posicionamiento web:
cursos-de-victor-robles-web
 
Ejemplos:
transformarURL("Cursos de Victor Robles WEB");
 
Devuelve:
cursos-de-victor-robles-web
 
*/

class Transform {
  String transformUrl(String text){
    return text.toLowerCase().split(' ').join('-');
  }
}

void main() {
  Transform transform = Transform();
  print(transform.transformUrl('Cursos de Victor Robles WEB'));
  print(transform.transformUrl('Siempre mostrar el resultado en la consola'));

}
