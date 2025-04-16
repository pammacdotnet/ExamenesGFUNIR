#import "@preview/typsium:0.2.0": ce
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
#import "@preview/gentle-clues:1.2.0": *

#set text(font: "Comic Neue", size: 18pt, lang: "es")

#let wuolah = ""
#if json("wuolah.json").wuolah == 1 {
  wuolah = [*No uses Wuolah, leñe!*]
}

#set page(
  background: rotate(
    24deg,
    par(
      text(180pt, fill: rgb("#00c8b428"))[
        #wuolah
      ],
    ),
  ),
  margin: 40pt,
  paper: "a4",
)


#show math.equation: it => {
  show ";": $thin #text(font: "Comic Neue")[,]$
  it
}

#show math.equation: it => {
  show regex("\d"): num => {
    text(font: "Comic Neue")[#num]
  }
  it
}

#show math.equation: it => {
  show ",": text(font: "Comic Neue", ",")
  it
}

#set heading(numbering: "1.")
#show heading.where(level: 1): item => {
  v(30pt)
  "Problema "
  context counter(heading).display()
  " "
  item.body
  v(-2.5mm)
}

#set enum(numbering: "1.A)")
#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Forense I - Grado en Física (UNIR)]]


=
El vehículo A de #qty(900, "kilo gram") de masa antes de la colisión frenó durante #qty(15, "meter"). Su ángulo de colisión fue de #qty(180, "degree"). Tras la colisión arrastró hasta posición final #qty(4, "meter"), presentando un ángulo de salida de la colisión de #qty(195, "degree"). El vehículo B de #qty(1000, "kilo gram") de masa, accede a la colisión con un ángulo de #qty(270, "degree"). Tras la colisión arrastró hasta posición final #qty(10, "meter"). Su ángulo de salida de la colisión fue de #qty(185, "degree").

#align(center, image("choque modelo c.svg"))

Utilizando:
- 0.5 como coeficiente de adherencia de los neumáticos al firme en ambas dinámicas post colisivas (arrastres).
- 0.7 como coeficiente de adherencia para la dinámica de frenada previa del vehículo A.
- 0.25 como tiempo de respuesta del sistema de frenos del vehículo A
Calcular:
- Velocidad de colisión de ambos vehículos.
- Velocidad de circulación del vehículo A.


= Test
- ¿Qué distancia se puede añadir a una huella de frenado para contabilizar huella no visible?
  - A. No se debe incrementar la longitud de la huella de frenado.
  - B. Una distancia que oscile entre los 5 y los 10 metros.
  - C. Una distancia que oscile entre 1 y 4 metros.
  - D. Una distancia que oscile entre los 2 y los 6 metros.

- ¿Durante una dinámica de rozamiento la pendiente será tenida en cuenta? (Señale la opción incorrecta).
  - A. Sumando o restando la pendiente de la vía en tanto por uno al coeficiente de adherencia.
  - B. Modulando el coeficiente de adherencia sumando o restando a este la tangente del ángulo que la pendiente forma con el plano horizontal.
  - C. Sumando o restando la energía potencial al balance energético total.
  - D. Sumando o restando la pendiente de la vía en tanto por cien al coeficiente de adherencia.

- ¿Para el cálculo de la energía de deformación al medir la anchura de la deformación, se debe tener en cuenta…?
  - A. Sólo el daño directo.
  - B. Sólo el daño inducido.
  - C. Tanto el daño directo como el daño inducido.
  - D. Sólo la deformación elástica.

- ¿En el cálculo de la velocidad a través de un modelo vectorial, cuando los ángulos de entrada o colisivos no son perpendiculares…?
  - A. Es imposible de resolver.
  - B. Se puede resolver con un sistema de ecuaciones.
  - C. Obliga a usar el cociente de restitución
  - D. Todas las respuestas son falsas

- ¿Los modelos impulsivos o vectoriales de cálculo de la velocidad se fundamentan en el principio…?
  - A. De conservación de la cantidad de energía cinética.
  - B. De conservación de la cantidad de energía.
  - C. De conservación de la cantidad de movimiento.
  - D. De conservación de la cantidad de materia.

- ¿En una colisión real entre vehículos, el valor del cociente de restitución oscila entre?
  - A. Siempre adopta un valor de 1.
  - B. Oscila entre 0.05 y 0.3.
  - C. Siempre adopta un valor de 0.
  - D. Oscila entre 0.5 y 0.8.
