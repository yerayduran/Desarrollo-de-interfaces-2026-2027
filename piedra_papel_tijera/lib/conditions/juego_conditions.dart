String evaluarGanador(String eleccionJugador1, String eleccionJugador2) {
  if (eleccionJugador1 == eleccionJugador2) {
    return '¡Empate!';
  }

  if ((eleccionJugador1 == 'rock' && eleccionJugador2 == 'scissors') ||
      (eleccionJugador1 == 'paper' && eleccionJugador2 == 'rock') ||
      (eleccionJugador1 == 'scissors' && eleccionJugador2 == 'paper')) {
    return '¡Gana el Jugador 1!';
  } else {
    return '¡Gana el Jugador 2!';
  }
}