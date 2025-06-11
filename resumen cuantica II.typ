#import "@preview/physica:0.9.5": *
#show: super-plus-as-dagger

#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
//#set text(lang: "es", font: "Cantarell")

// Meta data
#set document(title: "Typst Math for Undergrads", author: "johanvx")

// headcolor
#let headcolor = rgb("004225")

// Margin and footer
#set page(
  margin: 0.3in,
  paper: "a4",
  footer: context {
    if counter(page).display() == "2" {
      grid(
        columns: (1fr, 1fr),
        [],
        block(
          inset: 4pt,
          stroke: (top: headcolor),
          text(headcolor)[UNIR Física #h(1fr) #datetime.today().display()],
        ),
      )
    } else {
      []
    }
  },
)

// Font size
#let scriptsize = 7pt
#let normalsize = 10pt
#let large = 12pt
#set text(size: normalsize, lang: "en")

// Some horizontal spacing
#let kern(length) = h(length, weak: true)
#let enspace = kern(0.5em)

// For table/grid, something like "lhs \enspace rhs"
#let cell(lhs, rhs) = box(lhs + enspace + rhs)
// Grid for code blocks
#set grid(columns: (2em, auto))
// Table for math-code listing
#set table(stroke: none, align: horizon + left, inset: 0pt, row-gutter: 0.45em)

// LaTeX and TeX logos
#let TeX = context {
  let e = measure(text(normalsize, "E"))
  let T = "T"
  let E = text(normalsize, baseline: e.height / 2, "E")
  let X = "X"
  box(T + kern(-0.1667em) + E + kern(-0.125em) + X)
}
#let LaTeX = context {
  let l = measure(text(10pt, "L"))
  let a = measure(text(7pt, "A"))
  let L = "L"
  let A = text(7pt, baseline: a.height - l.height, "A")
  box(L + kern(-0.36em) + A + kern(-0.15em) + TeX)
}

// Unavailable (last check version)
#show "??": box(text(red, [v#sys.version #emoji.crossmark]))
// Tricky
#show "!!": box(text(blue, emoji.drops))
// No idea
#show "?!": box(text(orange, [No idea #emoji.face.unhappy]))
// Tricky figure numbering
#set figure(
  numbering: n => {
    ([??], [!!], [?!]).at(n)
  },
)
// No prefix
#set ref(supplement: "")

// Justified paragraphs
#set par(justify: true)

// Run-in sections, like LaTeX \paragraph
#show heading.where(level: 1): it => text(
  size: normalsize,
  weight: "bold",
  fill: headcolor,
  it.body + h(0.67em),
)

// Black raw code
#show raw.where(block: false): it => { it.text }

// Two-column layout
#show: rest => columns(3, rest, gutter: .4cm)

#align(
  center,
  link("https://github.com/johanvx/typst-undergradmath")[
    #text(large, headcolor)[*Resumen Cuántica II – UNIR Física*]
  ],
)

// Put this here to avoid affecting the title
#show link: underline

#image("uf.png")

#align(center)[*Tema 1: Formalismo de Dirac*]

= Fundamentos clave
+ Mecánica cuántica vs. clásica. La cuántica no admite trayectorias definidas para las partículas; en su lugar, se trabaja con vectores de estado en espacios vectoriales complejos
  (_espacios de Hilbert_).
+ Las funciones de onda son reemplazadas por _vectores abstractos_
  (kets).
+ La evolución y las mediciones se describen mediante _operadores lineales_ en dichos espacios.

= Formalismo de Dirac
- Kets: vectores $ket(alpha)$ en un espacio vectorial complejo.
  Representan estados cuánticos.
- Bras: elementos del espacio dual $bra(alpha)$, que permiten definir el _producto interno_ $braket(alpha, beta)$.

- Postulados:
  + Todo sistema cuántico se describe por un ket.
  + Multiplicar un ket por un número complejo no cambia el estado
    (describe el mismo rayo).
  + El producto interno es lineal y su resultado es un número complejo: $braket(alpha, beta) = braket(beta, alpha)^*$.
  + El producto interno es positivo definido: $braket(alpha, alpha) >= 0$.

= Operadores
- Representan _observables físicos_ y actúan sobre kets: $A ket(alpha)$.

- _Autoestados_ y _autovalores_: Si $A ket(a) = a ket(a)$, entonces $ket(a)$ es autoestado con autovalor $a$.
- #strong[Operador hermítico];: igual a su adjunto, tiene autovalores
  reales y autovectores ortogonales.
- #strong[Operador unitario];: cumple $U^+U=I$.

= Relación de completitud
Los autoestados normalizados de un operador hermítico forman una _base ortonormal_:

$ sum_(a') ket(a') bra(a') = I $

Permite expandir cualquier ket como combinación lineal de la base.

= Representación matricial
- Los operadores y vectores se representan como _matrices y
  vectores columna/fila_:

- El producto de operadores y vectores se interpreta como multiplicación matricial.
- Para operadores hermíticos, la matriz es igual a su _traspuesta conjugada_.

= Ejemplos
- Calcular el bra correspondiente al ket:
$ \| mu angle.r = 2 i \| beta_1 angle.r + \( 1 - 3 i \) \| beta_2 angle.r $
Se toma el complejo conjugado de los coeficientes y
se cambia la notación de ket a bra:

$
  angle.l mu \| = \( 2 i \)^(\*) angle.l beta_1 \| + \( 1 - 3 i \)^(\*) angle.l beta_2 \| =\ - 2 i angle.l beta_1 \| + \( 1 + 3 i \) angle.l beta_2 \|
$

- Calcular el producto interno $braket(mu, mu)$, suponiendo que $ket(beta_1)$ y $ket(beta_2)$ son ortonormales.

$ angle.l mu \| mu angle.r = \| 2 i \|^2 + \| 1 - 3 i \|^2 = \ 4 + \( 1^2 + 3^2 \) = 4 + 10 = 14 $

- Normalizar el ket del Ejercicio 1. Se divide por la raíz del producto interno (norma):

$ \| mu_("norm") angle.r = 1 / sqrt(14) (2 i \| beta_1 angle.r + \( 1 - 3 i \) \| beta_2 angle.r) $

- Dado un ket general:

$ \| alpha angle.r = sum_j c_j \( alpha \) \| a_j angle.r $

con $\| a_j angle.r$ formando una base ortonormal, calcular su
norma:

$ bar.v.double \| alpha angle.r bar.v.double = sqrt(sum_i \| c_i \( alpha \) \|^2) $

- Calcular el elemento matricial del operador:

$ Y = X \| alpha angle.r angle.l beta \| $

Usando la relación de completitud:

$ Y_(i j) = sum_k X_(i k) c_k \( alpha \) c_j^(\*) \( beta \) $

Es decir, se expande el operador $Y$ como una combinación matricial
usando coeficientes del ket $ket(alpha)$ y del bra $bra(beta)$.
