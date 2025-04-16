#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit, add-unit, add-prefix
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/exmllent:0.1.0": worksheets-parser, worksheet-parser
#import "@preview/physica:0.9.5": *

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



#text(weight: "extrabold", size: 30pt)[#align(center)[Termodinámica - Grado en Física (UNIR)]]



=
Explica el principio cero de la termodinámica.

=
¿Cuántos moles hay en 500 g de agua?

=
¿Cuándo un gas real puede aproximarse con un gas ideal?

=
Calcular la velocidad cuadrática media de las moléculas del aire sometidas a una presión de 5 bar y
a una temperatura de 40 ºC, sabiendo que la masa molar del aire es aproximadamente igual a 30 g/mol.

=
Una barra de cobre de 200 g se encuentra a una temperatura de 150 ºC. Se sumerge la barra en 500 g de agua a 25 ºC.
Sabemos que la relación entre el calor específico del cobre y el del agua es aproximadamente 0.1.
Si no se pierde calor, ¿cuál es la temperatura final de la barra de cobre una vez alcanzado el equilibrio térmico?

=
Calcular el trabajo del gas sometido a una presión de 1 bar, si este pasa de un volumen inicial de 2.0 l a un volumen de 5.0 l cuando se calienta.

=
Explica en detalle el segundo principio de la termodinámica.

=
Un gas diatómico se encuentra a una presión inicial de 2 bar y una temperatura de 300 K.
A continuación, se expande a presión constante hasta alcanzar una temperatura de 500 K y duplicando su volumen.
Posteriormente, el gas se expande isotérmicamente hasta duplicar nuevamente su volumen.
Después, se enfría el gas hasta alcanzar una temperatura de 185 K, mientras que su volumen no varía.
A continuación, el gas vuelve a su estado inicial sin que haya intercambio de calor.
Determinar Q y W intercambiados a lo largo de cada una de las transformaciones,
así como a lo largo de todo el ciclo. Calcular también el rendimiento del ciclo.

=
Calcula la variación de entropía de cada una de las transformaciones en el ejercicio anterior.
Calcula también la variación de entropía total del ciclo en el ejercicio anterior.

=
Escribe y describe la ecuación de Van der Waals.
