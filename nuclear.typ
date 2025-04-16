

#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit, add-unit, add-prefix
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/exmllent:0.1.0": worksheets-parser, worksheet-parser

#let wuolah = ""
#if json("wuolah.json").wuolah == 1 {
  wuolah = [*No uses Wuolah, leñe!*]
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

#set text(font: "Comic Neue", size: 18pt, lang: "es")

#text(weight: "extrabold", size: 30pt)[#align(center)[Física nuclear y de partículas (UNIR)]]

=
Encuentra la solución de la ecuación de Schrödinger del potencial escalón, para paquetes de partículas con energía $E > V_0$ y $E < V_0$.
Obtén los coeficientes de reflexión y transmisión en ambos casos. Indica el significado físico de todas las soluciones.

=
Describe las siguientes propiedades nucleares:
- Los números cuánticos del nucleón: momento angular orbital, espín y paridad. El espín nuclear: momento angular total y tercera componente.
- Paridad nuclear.
- Isospín nuclear. El estado de 2 nucleones.

=
A continuación, explica en detalle la desintegración gamma, desarrollando los siguientes puntos:
- A partir de las leyes de conservación, obtén la ecuación de la energía de los fotones.
- Caracteriza el proceso de Conversión Interna. ¿De qué forma compite con la desintegración?
- Discute brevemente la vida media de la desintegración en función del tipo de transición (eléctrica o magnética)
- Dibuja un diagrama de la desintegración básico.
- ¿Qué reglas de selección han de verificarse para que tenga lugar la desintegración?

=
Describe la interacción fuerte y el papel del color de quarks y gluones. ¿Cómo se construyen los diagramas de Feynman de la interacción fuerte?
Indica los vértices fundamentales de la desintegración fuerte y su constante de acoplo, y dibuja el diagrama de Feynman de la interacción entre barión y antibarión (por ejemplo, la desintegración: protón - antiprotón #emoji.arrow.r neutrón - antineutrón).
