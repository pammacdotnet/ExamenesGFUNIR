// main.typ
#set text(lang: "es")

// This string changes the equation numbering format
#let num_format = "(1)"

// set the list marker to "‣"
#set list(marker: "‣", indent: 0em)

// physics notation package
#import "@preview/physica:0.9.4": *

// random number generator
#import "@preview/suiji:0.4.0": *
#let rng = gen-rng-f(1001)
#let randint = integers-f(rng)

// boxed enviroment to remark equations
#import "@preview/mannot:0.2.2": markrect

// package to wrap content around text
#import "@preview/wrap-it:0.1.0": wrap-content

// template.typ
#let apply_style(content) = {
  set text(font: "New Computer Modern", size: 18pt)
  set page(margin: (top: 2cm, bottom: 2cm, left: 2.3cm, right: 2.3cm), numbering: "1")
  set heading(numbering: "1.")
  show heading: set block(below: 1.3em)
  set par(leading: 0.55em, spacing: 1.5em, first-line-indent: 0em, justify: true)
  show raw: set text(font: "New Computer Modern Mono")
  show heading: set block(above: 1.4em, below: 1em)
  content
}

// use different language translations, aside from the default ones
#import "@preview/linguify:0.4.2": *

#let document_template(
  pretitle: none,
  title: "Document Title",
  author: "Author Name",
  department: "Department",
  institution: "Institution",
  logo: "logo.svg",
  date: none,
  bibliography_file: "references.bib",
  content,
) = {
  // Default to current date if none provided
  let actual_date = if date == none { datetime.today().display() } else { date }

  apply_style[
    #text(22pt)[#smallcaps(title)]\
    #text(18pt)[#smallcaps(pretitle)]
    // Main content
    #content
  ]
  // This string changes the equation numbering format
  let num_format = "(1)"
}

// colorful boxes
#import "@preview/showybox:2.0.4": *

// declare colors that I like
#let teal = rgb("#008080")
#let olive = rgb("#808000")
#let purple = rgb("#800080")
#let red = rgb("#B22222")
#let brown = rgb("#A52A2A")

// create the example counter
#let excount = counter("excount")

// reference equation as (1), (2), etc.
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(
      el.location(),
      numbering(
        el.numbering,
        ..counter(eq).at(el.location()),
      ),
    )
  } else {
    // Other references as usual.
    it
  }
}

// function to color text in math mode
#let colred(x) = text(fill: red, $#x$)

// function to color text in math mode
#let tc(color, x) = text(fill: color, $#x$)

#document_template(
  pretitle: "Examen Final.",
  title: "Fundamentos de Física II",
  author: "Pau López Oliver",
  department: "Grado en Física",
  institution: "Universidad Internacional de La Rioja",
  logo: "logo.svg",
  // Optional; omit for current date
  bibliography_file: "../bibliography.bib",
)[

  Las *cuestiones de teoría* deben responderse en unas pocas lineas de manera *clara y concisa*. Para la realización de este examen se puede usar un _formulario_ consistente de un único folio A4 por delante y por detrás, el cual puede contenter fórmulas, aunque *nunca ejercicios resueltos*. El formulario debe estar confeccionado por la misma persona que responde el examen y se debe entregar junto al él. Se permite el uso de una hoja en sucio para hacer cuentas en el examen, la cual también se debe entregar aunque no será evaluada.

  De los 3 ejercicios se deben de escoger 2, los cuales deben ser indicados y desarrollados con claridad y concisión.

  #line(length: 100%, stroke: 0.2pt)

  *[1 pto.] Cuestión 1.* Comenta la veracidad o falsedad de estas afirmaciones, justificando tu respuesta en ambos casos:
  - Toda la materia presenta características ondulatorias y corpusculares simultáneamente, como pone de manifiesto la longitud de onda de DeBroglie, $h = p lambda$.
  - La posición y el momento lineal de un electrón pueden ser determinados simultáneamente con precisión arbitraria siempre y cuando los instrumentos de medición usados sean lo suficientemente precisos.
  - En mecánica cuántica, si una partícula se encuentra en un estado $ket(phi_(0))$ en un tiempo $t_(0)$, siempre podré saber el estado $ket(phi)(t)$ en un tiempo $t>t_(0)$ arbitrario.

  *[1 pto.] Cuestión 2.* Explica que es la polarización de la luz y proporciona varios ejemplos de diferentes tipos de polarizaciones.

  *[1 pto.] Cuestión 3.* Explica el llamado _principio de Hyugens_. Da algún ejemplo de algún fenómeno físico que pueda ser explicado con tal principio.

  *[1 pto.] Cuestión 4.* Una muestra radiactiva contiene $10^(10)$ átomos sin descomponer. Inicialmente, la muestra contenía $3 times 10^(13)$ átomos y tiene una antigüedad de 67 años. ¿Cuál es su vida media?

  #v(1em)

  #text("Ejercicios (elegir 2 de los 3 propuestos).", size: 1.2em, weight: "bold")

  *[3 pto.] Ejercicio 1.* Un tubo en forma de U abierto por ambos extremos contiene un poco de mercurio. Se vierte con cuidado un poco de agua en el brazo izquierdo del tubo hasta que la altura de la columna de agua es de $15.0 thin "cm"$ (ver @fig:e3-17).
  + calcula la presión manométrica en la interfaz agua-mercurio.
  + calcula la distancia vertical $h$ entre la superficie del mercurio en el brazo derecho del tubo y la superficie del agua en el brazo izquierdo.

  #figure(
    image("e3-17.png", width: 40%),
    caption: [
      Figura para la resolución del ejercicio superior.
    ],
  ) <fig:e3-17>


  *[3 pto.] Ejercicio 2.* Mientras diriges tu vehículo espacial con rapidez constante hacia la Luna, un piloto de carreras pasa a tu lado en su nave espacial de carreras con una rapidez constante de $0.800c$ con respecto a ti. En el instante en que la nave espacial de carreras pasa ante ti, ambos ponéis en marcha los cronómetros en cero. a) En el instante en que mides que la nave espacial de carreras ha recorrido $1.20 times 10^(8) thin "m"$ luego de pasar al lado de usted, ¿qué tiempo lee el piloto de carreras en su cronómetro? b) Cuando el piloto de carreras lee en su cronómetro el valor calculado en el inciso a), ¿qué distancia lo separa de usted, según las mediciones de él? c) En el instante en que el piloto de carreras lee en su cronómetro el valor calculado en el inciso a), ¿qué tiempo lees en el suyo?

  *[3 pto.] Ejercicio 3.* Un insecto de $1.25 thin "mg"$ vuela a través de un orificio con diámetro de $4.00 thin "mm"$ en una mosquitera (malla metálica) de una ventana común. El espesor de la mosquitera es de $0.500 thin "mm"$. a) ¿Cuáles deberían ser la longitud de onda aproximada y la rapidez del insecto como para que aquella muestre comportamiento ondulatorio conforme pasa por el orificio? b) Con la rapidez calculada para el inciso a), ¿cuánto tardaría el insecto en pasar por los 0.$500 thin "mm"$ de espesor del orificio en la mosquitera? Compare este tiempo con la edad del Universo (que es de 14 mil millones de años, aproximadamente). ¿Esperarías ver la _difracción del insecto_ en la vida cotidiana?

  // #pagebreak()

  // #heading(level: 1, numbering: none)[Criterios de evaluación]
  // <extensión-máxima-de-la-actividad>
  // No se establece extensión máxima para la resolución de estos ejercicios, ya que existen varias formas de abordar los problemas. Quien haga los cuatro ejercicios obligatorios puede optar al 10 si responde correctamente a todos ellos. Quien haga el ejercicio voluntario correctamente tendrá más nota, pudiendo exceder el 10.

  // #figure(
  //   align(center)[#table(
  //     columns: 3,
  //     align: (left,center,center,),
  //     table.header([#strong[Criterio];], [#strong[Puntuación máxima
  //       (puntos)];], [#strong[Peso (%)];],),
  //     table.hline(),
  //     [El planteamiento teórico del ejercicio es correcto (aplicable a cada ejercicio)], [4], [40%],
  //     [El método de resolución está explicado bien y con claridad (aplicable a cada ejercicio)], [4], [40%],
  //     [Los resultados numéricos son correctos (por cada uno de
  //     los 4 ejercicios)], [2], [20%],
  //     [#strong[Total];], [#strong[10];], [#strong[100%];],
  //   )]
  //   , kind: table
  //   )
  //   La evaluación puede ser diferente a la establecida en esta rúbrica en casos de plagio o detección de errores de otro tipo que no hayan sido considerados en ella.
]
