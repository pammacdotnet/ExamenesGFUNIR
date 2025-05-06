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
#let rng = gen-rng-f(1002)
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

  *[1 pto.] Cuestión 1.* Enuncia el principio de Fermat, explicando brevemente todos los conceptos previos que consideres relevantes.

  *[1 pto.] Cuestión 2.* Comentar la veracidad o falsedad de las siguientes afirmaciones sobre el estudio sólido rígido, justificando tu respuesta:
  - Las partículas que constituyen un sóldio rígido pueden moverse siempre que no cambie la forma del sólido.
  - La velocidad angular $omega$ de cada partícula de un sólido rígido es constante en el tiempo.
  - La velocidad angular $omega$ es igual para todas las partículas de un sólido para todos los tiempos $t$.

  *[1 pto.] Cuestión 3.* Explica en qué consiste la radiación de cuerpo negro y qué es la catástrofe del ultravioleta.

  *[1 pto.] Cuestión 4.* Enunciar el principio de arquímedes. ¿Es este hecho verdaderamente un principio?

  #v(1em)

  #text("Ejercicios (elegir 2 de los 3 propuestos).", size: 1.2em, weight: "bold")

  *[3 pto.] Ejercicio 1.* _Teorema de Steiner con un hueco_. Se dispone de una lámina rectangular de masa $M$ y dimensiones $a times b$. Se le ha retirado un círculo (hueco) de radio $r$, cuyo centro se encuentra a una distancia $d$ del centro del rectángulo. Asume que la masa del hueco es $M_("hueco") = A_("circ") "/" A_("rect") M$, donde $A_("rect") = a b$ y $A_("circ") = \pi r^2$ son las áreas de cada figura.
  + Calcular el momento de inercia del rectángulo completo respecto a un eje perpendicular al plano que pasa por su centro.
  + Calcular el momento de inercia del círculo retirado respecto al mismo eje, considerando que su centro está desplazado $d$ del centro del rectángulo
  + Obtener el momento de inercia de la lámina resultante, con hueco.

  *[3 pto.] Ejercicio 2.* Dos altavoces, A y B de la @fig:e6-8, son alimentados por el mismo amplificador y emiten ondas senoidales en fase. El altavoz B está $2.00 thin "m"$ a la derecha de A. La frecuencia de las ondas sonoras producidas por los altavoces es de $206 thin "Hz"$. Considere el punto $P$ entre los altavoces a lo largo de la línea que los une, a una distancia $x$ a la derecha de A. Ambos altavoces emiten ondas sonoras que viajan directamente del altavoz a $P$. a) ¿Con qué valores de $x$ habrá interferencia destructiva en $P$? b) ¿Y constructiva?

  #figure(
    image("e6-33.png", width: 59%),
    caption: [
      Figura para la realización del ejercicio 6.8.
    ],
  ) <fig:e6-8>

  *[3 pto.] Ejercicio 3.* Considere la reacción nuclear
  $
    ""^(24)_(14)"Si" + gamma arrow.r ""^(24)_(12)"Mg" + X
  $
  donde X es un núclido. a) ¿Cuáles son A y Z del núclido X? b) Sin tener en cuenta los efectos del retroceso, ¿qué energía mínima debe tener el fotón para que suceda esta reacción? c) Cuál es la energía cinética del producto $X$ si el fotón tiene una energía de $30 thin "MeV"$ y el
  $""^(24)_(12)"Mg"$ emerge sin retroceso? La masa de un átomo de $""^(24)_(14)"Si"$ es $27.976927 thin "u"$, y la de un átomo de $""^(24)_(12)"Mg"$ es $23.985042 thin "u"$.


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
