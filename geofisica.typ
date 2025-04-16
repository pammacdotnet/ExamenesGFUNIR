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

#text(weight: "extrabold", size: 30pt)[#align(center)[Fuentes de energía - Física (UNIR)]]

=
Describa brevemente el panorama de las energías renovables en el contexto actual de calentamiento global y cambio climático.


=
Dada una localización en Burgos, para un proyecto residencial de energía renovable de una vivienda aislada, realice un diagnóstico de las condiciones climáticas locales y recomiende qué
tipo de instalación implementar. Puede utilizar propuestas híbridas.

=
Calcule la inclinación óptima para producción anual de energía solar fotovoltaica en la localización de la pregunta 2 para una vivienda aislada. Calcule el consumo anual de dicha vivienda conociendo los siguientes datos:

#worksheet-parser(
  xml-workbook: xml("inclinacion.xml"),
  worksheet: "Sheet1",
  with-table-styles: false,
  with-table-alignment: true,
  // if with-table-styles is false, then below args will be passed to table
  columns: (1fr, 1fr, 1fr),
  rows: 1.5em,
  align: center + horizon,
  stroke: gray,
  table.header(
    [*Equipo*],
    [*Potencia/h (watt)*],
    [*Horas uso/día*],
  ),
)

=
Determine qué estrategias pasivas de energía renovable utilizaría para climatización de la vivienda aislada, en cada localización en función de los recursos climatológicos disponibles.
Las estrategias pasivas a considerar son:
- Calentamiento solar pasivo por radiación directa
- Captación de las ganancias internas
- Uso de la masa para acumulación térmica con ven lación nocturna selec va
- Refrescamiento evapora vo
- Geotermia


=
Explique el proceso de aprovechamiento de biomasa en un establecimiento pecuario.

#image("meteoblue.jpg")
#move(dx: 15cm)[#rotate(90deg, origin: top + left)[#image("burgos.jpg", width: 150%)]]
