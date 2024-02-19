/*
Advertencias:
- En español por fines didacticos, en la vida real usa nombres en ingles.
- Test en cada ejercicio, lo veremos al final del curso para ir al grano.
- Ejercicios genéricos, puedes usar cualquier lenguaje.
- Ejercicios nuevos y diferentes a los del Master en Lógica de Programación
- Siempre mostrar el resultado en la consola / terminal (salvo excepciones).
- Hay muchas soluciones validas para un mismo ejercicio.
 
Enunciado Ejercicio 47:
Crea un simulador de pieda, papel o tijera.
 
El resultado podrá ser: "Jugador 1", Jugador 2" o "Empate"
 
Ejemplos:
 
quienGana([["PIEDRA", "TIJERA"], ["TIJERA", "PIEDRA"], ["PAPEL", "TIJERA"]]); 
// Devuelve: "Jugador 2"
 
quienGana([["PIEDRA", "PIEDRA"], ["TIJERA", "TIJERA"], ["PAPEL", "PAPEL"]]); 
// Devuelve: "Empate"
 
quienGana([["PIEDRA", "TIJERA"], ["TIJERA", "PAPEL"], ["PAPEL", "PIEDRA"]]); 
// Devuelve "Jugador 1"
*/

class Game {
  String whoIsWinner( List<List<String>> game){
    const options = ['PIEDRA', 'PAPEL', 'TIJERA'];
    String player1, player2, result='';
    int countPlayer1=0, countPlayer2=0;
    // print(game);
    // print(game[0]);
    // print(game[0][0]);

    for(int i = 0; i < game.length; i++){
      player1 = game[i][0].toLowerCase();
      player2 = game[i][1].toLowerCase();
      // print('$player1 $player2');
      // Evaluate cases when both players are the winners
      if((player1 == options[0].toLowerCase() && player2 == options[0].toLowerCase()) || (player1 == options[1].toLowerCase() && player2 == options[1].toLowerCase()) || (player1 == options[2].toLowerCase() && player2 == options[2].toLowerCase())){
        countPlayer1++;
        countPlayer2++;
      }
      // Evaluates cases when palyer1 is the winner
      else if((player1 == options[0].toLowerCase() && player2 == options[2].toLowerCase()) || (player1 == options[1].toLowerCase() && player2 == options[0].toLowerCase()) || (player1 == options[2].toLowerCase() && player2 == options[1].toLowerCase()) ){
        // print('$countPlayer1 $countPlayer2');
        countPlayer1++;
      }
      else if((player2 == options[0].toLowerCase() && player1 == options[2].toLowerCase()) || (player2 == options[1].toLowerCase() && player1 == options[0].toLowerCase()) || (player2 == options[2].toLowerCase() && player1 == options[1].toLowerCase()) ){
        countPlayer2++;
      }
      else {
        print('falta algun caso sin evaluar');
      }
    }
      //Evaluate cases when player 2 is the winner
      // Evaluate who is the final winner --> countplayer1 > countplayer2, countplayer2 > countplayer1, countplayer1 == countplayer2
      if(countPlayer1 == 3 && countPlayer2 == 3){
        result = 'Empate';
      }else if(countPlayer1 > countPlayer2){
        result = 'Jugador 1';
      }else if(countPlayer2 > countPlayer1){
        result = 'Jugador 2';
      }else {
        result = 'algo salio mal nunca deberia caer aqui';
      }

    return result;
  }
}

void main(){
  Game game = Game();
  print(game.whoIsWinner([["piedra", "tijera"], ["tijera", "piedra"], ["papel", "tijera"]])); // Player 2
  print(game.whoIsWinner([["piedra", "piedra"], ["tijera", "tijera"], ["papel", "papel"]])); // Both
  print(game.whoIsWinner([["piedra", "tijera"], ["tijera", "papel"], ["PAPEL", "piedra"]])); // Player 1
}