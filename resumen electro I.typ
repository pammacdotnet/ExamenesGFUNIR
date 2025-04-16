#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
//#set text(lang: "es", font: "Cantarell")

// Meta data
#set document(title: "Typst Math for Undergrads", author: "johanvx")

// headcolor
#let headcolor = rgb("004225")

// Margin and footer
#set page(
  margin: 0.2in,
  paper: "a4",
  footer: context {
    if counter(page).display() == "2" {
      grid(
        columns: (1fr, 1fr),
        [],
        block(
          inset: 4pt,
          stroke: (top: headcolor),
          text(headcolor)[johanvx (https://github.com/johanvx) #h(1fr) #datetime.today().display()],
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
#show: rest => columns(3, rest, gutter: .3cm)

#align(
  center,
  link("https://github.com/johanvx/typst-undergradmath")[
    #text(large, headcolor)[*Resumen Electro I – UNIR Física*]
  ],
)

// Put this here to avoid affecting the title
#show link: underline

#align(center)[*Tema 1: Campo Eléctrico*]

= Fundamentos de electroestática
- Ley de Coulomb: fuerza conservativa, central y de tipo
  newtoniano.
- Principio de superposición: la fuerza total es la suma
  vectorial de las fuerzas individuales.

= La carga eléctrica
- Las cargas se adquieren por fenómenos como el rozamiento.
- Tipos de carga: positiva y negativa.
- Cuantificación: $q = N e$, donde
  $e = #qty("1.602e-19", "coulomb")$.
- Conservación: la carga neta en un sistema aislado permanece
  constante.

= Ley de Coulomb
$ arrow(F) = frac(1, 4 pi epsilon.alt_0) frac(q_1 q_2, r^2) hat(r) $
- La fuerza entre dos cargas es proporcional al producto de sus cargas e
  inversamente proporcional al cuadrado de la distancia entre ellas.
- Dirección: línea que une ambas cargas.
- Obedece la tercera ley de Newton.

= Distribuciones de carga continua
- Lineal: $lambda(r)$, unidades #unit("coulomb per meter").
- Superficial: $sigma(r)$, unidades #unit("coulomb per meter squared").
- Volumétrica: $rho(r)$, unidades #unit("coulomb per meter cubed").
- Se emplean integrales para calcular la fuerza resultante.

= Campo eléctrico
$ arrow(E) = lim_(q arrow.r 0) arrow(F) / q $
$ arrow(E) (arrow(r)) = sum_i frac(1, 4 pi epsilon.alt_0) q_i / r_i^2 hat(r)_i $

= Líneas de campo eléctrico
- Representan visualmente la dirección y magnitud del campo.
- Salen de cargas positivas y entran en negativas.
- No se cruzan.
- Su densidad representa la intensidad del campo.

= Movimiento de partículas cargadas
- Una partícula en un campo eléctrico experimenta:
  $ arrow(a) = frac(q arrow(E), m) $
- Si $arrow(E)$ es constante, la aceleración también lo será.


#align(center)[*Tema 2: Ley de Gauss*]

= Flujo eléctrico
El flujo eléctrico representa la cantidad de campo eléctrico
que atraviesa una superficie.

- Para un campo uniforme:
  $ Phi = arrow(E) dot.op arrow(A) = E A cos theta $
- En superficies curvas o campos no uniformes:
  $ Phi = integral_S arrow(E) dot.op d arrow(A) $

Positivo si las líneas salen de la superficie, negativo si entran.

= Ley de Gauss
Relaciona el flujo eléctrico neto en una superficie cerrada con
la carga neta encerrada:

$ Phi = integral.cont_S arrow(E) dot.op d arrow(A) = q_(i n) / epsilon.alt_0 $

- Independiente de la forma de la superficie.
- Útil solo si hay #strong[simetría];: esférica, cilíndrica o plana.

= Línea de carga infinita
Para densidad lineal $lambda$:
$ E = frac(lambda, 2 pi epsilon.alt_0 r) $

= Plano cargado infinito
Para densidad superficial $sigma$: $ E = frac(sigma, 2 epsilon.alt_0) $

= Esfera uniformemente cargada
- Fuera de la esfera ($r > R$):
  $ E = frac(Q, 4 pi epsilon.alt_0 r^2) $
- Dentro de la esfera ($r < R$):
  $ E = frac(rho r, 3 epsilon.alt_0) $

  $Q = rho dot.op 4 / 3 pi R^3$

= Conductores en equilibrio
- $arrow(E) = 0$ en el #strong[interior];.
- Campo eléctrico #strong[normal] a la superficie.
- La carga reside #strong[en la superficie];:
  $ E = sigma / epsilon.alt_0 $


= Esfera y cascarón
Una esfera con carga $+ 3 Q$ y un cascarón con $- Q$:
$
  E \( r \) = cases(delim: "{", frac(3 Q, 4 pi epsilon.alt_0 r^2) \, & a < r < b, 0 \, & b < r < c, frac(Q, 2 pi epsilon.alt_0 r^2) \, & r > c)
$


= Teorema de la divergencia (de Gauss)
<teorema-de-la-divergencia-de-gauss>
Relaciona la integral de superficie de un campo con su divergencia en
volumen:

$ integral.cont_S arrow(E) dot.op d arrow(A) = integral_V \( nabla dot.op arrow(E) \) thin d V $


= Divergencia del campo eléctrico
<divergencia-del-campo-eléctrico>
Partiendo de la ley de Gauss y usando el teorema de la divergencia:

$ nabla dot.op arrow(E) = rho / epsilon.alt_0 $

Es la _forma diferencial_ de la Ley de Gauss y una de las
Ecuaciones de Maxwell.

