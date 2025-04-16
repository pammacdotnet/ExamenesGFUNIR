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

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Mecánica de Fluidos - Grado en Física (UNIR)]]

=
Un fluido con densidad de #qty(800, "kilo gram per meter cubed") fluye en un sistema de tuberías. En un punto, la velocidad es de #qty(3, "meter per second") y la presión es de #qty(120, "kilo pascal"). En un segundo punto, la tubería se eleva #qty(5, "meter") y la velocidad disminuye a #qty(1.5, "meter per second"). Determina la presión en el segundo punto.

=
Verifica la homogeneidad dimensional de la ecuación para la energía cinética específica de un fluido:
$
  E = 1 / 2 v^2 thin .
$

=
Un fluido con umbral de fluencia $tau_0 = #qty(2, "pascal")$ y viscosidad #qty(0.01, "pascal second") fluye en un canal. Si el graciente de velocidad es #qty(0.5, "per second"), calcula el esfuerzo cortante.

=
Agua fluye en una tubería con una velocidad inicial de #qty(2.5, "meter per second") y un diámetro incial de #qty(0.1, "meter"). Si el diámetro final es #qty(0.05, "meter"), determina la velocidad final.

=
En un tubo capilar de radio #qty(0.002, "meter"), el agua asciende #qty(0.03, "meter") debido a la tensión superficial (#qty(0.072, "newton per meter")). Calcula el ángulo de contacto si $rho = #qty(1000, "kilo gram per meter cubed")$ y $g = #qty(9.8, "meter per second squared", multiplier: "dot")$.
