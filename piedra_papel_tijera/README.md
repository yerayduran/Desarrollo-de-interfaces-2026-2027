# Práctica: Piedra, Papel o Tijera (Flutter)

## 📋 Enunciado de la Práctica

El objetivo de la práctica es desarrollar una app que estructuralmente sea igual que la de la imagen adjunta. En cuanto a la funcionalidad se observa que existen dos círculos de color que en realidad contendrán una de las tres imágenes que también se adjunta (`paper.png`, `rock.png` y `scissors.png`), cuando el usuario pulsa el botón **GO!!** las imágenes cambia aleatoriamente y dependiendo del resultado se deberá mostrar un mensaje de que jugador gana la partida o si hay empate.

---

## 📁 Estructura del Proyecto

```text
piedra_papel_tijera/
├── assets/
│   └── images/
│       ├── paper.png
│       ├── rock.png
│       └── scissors.png
├── lib/
│   ├── conditions/
│   │   └── juego_conditions.dart
│   ├── screens/
│   │   └── juego_screen_details.dart
│   └── main.dart
└── pubspec.yaml
```

---

## ⚙️ Explicación del Código

El código está estructurado en tres archivos principales para separar la lógica de negocio, la interfaz gráfica y el punto de entrada de la aplicación:

### 1. Entrada Principal (`lib/main.dart`)
- Define la clase `MyApp` (`StatelessWidget`).
- Configura el `MaterialApp` principal, desactivando el banner de depuración y estableciendo como vista inicial (`home`) el widget `JuegoScreenDetails`.

### 2. Lógica del Juego (`lib/conditions/juego_conditions.dart`)
- Contiene la función independiente `evaluarGanador(String eleccionJugador1, String eleccionJugador2)`.
- **Condiciones de evaluación:**
  - Si ambas elecciones son iguales. Devuelve `'¡Empate!'`.
  - Evalúa la regla de victoria del **Jugador 1**:
    - Piedra vence a Tijera (`rock` vs `scissors`).
    - Papel vence a Piedra (`paper` vs `rock`).
    - Tijera vence a Papel (`scissors` vs `paper`).
  - Si se cumple la condición de victoria para el Jugador 1. Devuelve `'¡Gana el Jugador 1!'`.
  - En cualquier otro caso. Devuelve `'¡Gana el Jugador 2!'`.

### 3. Interfaz de Usuario e Interacción (`lib/screens/juego_screen_details.dart`)
- Se implementa mediante un `StatefulWidget` para reflejar los cambios de estado en la pantalla en tiempo real.
- **Variables de estado:**
  - `opciones`: Lista de mapas que contiene el nombre de cada opción y la ruta del recurso visual (`assets/images/...`).
  - `indiceJugador1` e `indiceJugador2`: Enteros que guardan el índice actual asignado a cada jugador.
  - `mensajeResultado`: String con el texto formateado que muestra quién ganó o si hubo empate.
- **Función `jugarPartida()`:**
  - Utiliza la librería `dart:math` (`Random()`) para generar números aleatorios entre 0 y 2.
  - Actualiza el estado mediante `setState()`, cambiando los índices de ambos jugadores e invocando la función `evaluarGanador()` para actualizar el mensaje en pantalla.
- **Diseño de la Interfaz:**
  - **Encabezado (`AppBar`):** Muestra el título `Rock-Paper-Scissor`.
  - **Área de Jugadores (`Row`):** Contiene dos columnas (`Jugador 1` y `Jugador 2`). Cada una tiene un contenedor circular con la imagen asignada recortada con `Image.asset`.
  - **Texto de Resultado:** Un widget `Text` de tamaño destacado que muestra el estado de la partida.
  - **Boton (`ElevatedButton`):** Botón con el texto `'Go!!'` que activa el método `jugarPartida()` al ser presionado.

---

## 🚀 Requisitos de Configuración

Para garantizar que las imágenes se carguen correctamente, el archivo `pubspec.yaml` debe incluir la carpeta de assets:

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/paper.png
    - assets/images/scissors.png
    - assets/images/rock.png
```