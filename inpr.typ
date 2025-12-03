#import "@preview/unify:0.7.1": qty, unit
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

#text(weight: "extrabold", size: 30pt)[#align(center)[Protección radiológica (Unir Física)]]

=
¿Qué es el poder de frenado y cómo influye en la penetración de las partículas cargadas en la materia?

=
Describe el principio de funcionamiento de un contador Geiger-Müller.

=
Menciona los tres principios básicos de la protección radiológica.

=
Calcula la dosis absorbida en un tejido si absorbe una energía de 0.05 J en un volumen de #qty(2, "centi meter cubed"). Considera que la densidad del tejido es de #qty(0.83, "gram per centi meter cubed").

=
Calcula el espesor de plomo necesario para reducir la intensidad de un haz de rayos gamma a la mitad. El coeficiente de atenuación másico del plomo es de #qty(1 / 2, "centi meter squared per gram") para los rayos gamma considerados. Densidad del plomo #qty(11.34, "gram per centi meter cubed").

=
El sótano de una casa tiene un volumen de #qty(160, "meter cubed"). Por el suelo se filtra gas radón a razón de #qty(1.5, "becquerel per hour") por hora. Evaluar la actividad asintótica (o de equilibrio) en el sótano suponiendo que no hay ventilación. La única forma de disminuir esta concentración es mediante ventilación. Suponer que un acondicionador de aire renueva el aire en el sótano una vez al día. ¿Cuál es la nueva concentración asintótica y actividad? Ten en cuenta que el radón tiene una vida media de aproximadamente #qty(3.8, "day").

=
Dos fuentes puntuales e isotrópicas de radiación de #qty("2E10", "becquerel") y #qty("1E10", "becquerel"), respectivamente, están separadas #qty(300, "meter"). Cada desintegración de ambas fuentes emite exactamente 1 fotón de energía #qty(1.25, "mega electronvolt"). En el punto situado a #qty(1, "meter") de la fuente de #qty("1E10", "becquerel") y a #qty(4, "meter") de la de #qty("2E10", "becquerel") (sobre la línea que une ambas fuentes) calcular:
+ Flujo de energía en el vacío #unit("watt per meter squared").
+ Flujo de energía en aire, considerando atenuación.
+ Tasa de exposición en aire #unit("coulomb per kilo gram hour").
+ Tasa de dosis absorbida en aire #unit("gray per hour").
