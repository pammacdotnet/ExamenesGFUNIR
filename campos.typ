
#set text(font: "Comic Neue", size: 18pt, lang: "es")

#set page(
  background: move(
    dx: 6pt,
    dy: 6pt,
  )[#align(top)[#rotate(
        14deg,
        par(
          text(160pt, fill: rgb("#0ef7ff32"))[
            *No uses Wuolah, leñe!*
          ],
        ),
      )]],
  margin: 40pt,
  paper: "a4",
)
#import "@preview/gentle-clues:1.2.0": *

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Teoría de campos - Grado en Física (UNIR)]]

#idea(title: "Preguntas de teoría")[
  - Enuncie la segunda Ley de Newton. ¿Qué consecuencias conlleva esta ley? Razone su respuesta. ¿Cómo se relaciona esta ley con el concepto de masa y con el momento lineal?

  - Enuncie el teorema de la ecuación del movimiento del momento angular para un sistema de partículas. Demuestre la conservación del momento angular del sistema de partículas.

  - ¿Qué tres casos posibles se pueden dar para un movimiento oscilatorio amortiguado?
]

#experiment(title: "Problemas")[
  - Considerando un choque elástico entre dos partículas cuyas masas son $m$ y $2m$, considerando que la partícula de masa $2m$ se encuentra inicialmente en reposo, determine la energía transferida a la partícula originalmente estacionaria, considerando que $E_0$ es la energía inicial y $theta$ es el ángulo de desviación de la partícula incidente.

  - Determine la variación del campo gravitatorio terrestre para alturas pequeñas respecto de la superficie. ¿Cómo se puede comparar esta variación del campo gravitatorio para alturas pequeñas con el caso de que se varíe la profundidad?
]
