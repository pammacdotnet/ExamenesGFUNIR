#set text(font: "Comic Neue", size: 18pt, lang: "es")

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
  background: move(
    dx: 6pt,
    dy: 6pt,
  )[#align(top)[#rotate(
        14deg,
        par(
          text(160pt, fill: rgb("#0ef7ff32"))[
            *UNIR Física!*
          ],
        ),
      )]],
  margin: 40pt,
  paper: "a4",
)
#import "@preview/gentle-clues:1.2.0": *

#text(
  weight: "extrabold",
  size: 30pt,
)[#align(center)[Examen de Cálculo y geometría diferencial - Grado en Física (UNIR)]]

+ Calcular el siguiente límite:
  $ lim_(\( x \, y \) arrow.r \( 0 \, 0 \)) frac(sin \( x^2 + y^2 \), x^2 + y^2) $

+ Verificar la continuidad y derivabilidad de:
  $
    f \( x \, y \) = cases(delim: "{", frac(x^4 y, x^2 + y^2) & \( x \, y \) eq.not \( 0 \, 0 \) \,, 0 & \( x \, y \) = \( 0 \, 0 \))
  $

+ Sea $f \( x \, y \, z \) = x y z + arctan \( x^2 + y^2 + z^2 \)$.
  Calcular el gradiente en $\( 1 \, 0 \, 0 \)$.

+ Decir si el campo
  $arrow(F) \( x \, y \, z \) = \( y z \, x z \, x y \)$ es
  conservativo#footnote[Ser conservativo significa
  $frac(partial F_1, partial x_1) = frac(partial F_2, partial x_2)$.] y
  hallar un potencial#footnote[Un potencial $f$ del campo $arrow(F)$ es
  tal que $nabla f = arrow(F)$.] si es posible.

+ Hallar y clasificar los extremos de:
  $ f \( x \, y \) = x^4 + y^4 - 4 x y $

+ Usar el método de Lagrange para:
  $ min \/ max f \( x \, y \) = x + y quad upright("s.a. ") x^2 + y^2 = 1 $

+ Evaluar el área bajo $f \( x \, y \) = x^2 - y^2$ entre $y = x^2$ y
  $y = 2 - x^2$.

+ Calcular el volumen limitado por $z = 0$ y $z = 4 - x^2 - y^2$ usando
  coordenadas cilíndricas.

+ Usar el teorema de Stokes para calcular:
  $ integral_(partial S) arrow(F) dot.op d arrow(r) $ donde
  $arrow(F) \( x \, y \, z \) = \( - y \, x \, 0 \)$ y $S$ es la calota
  hemisférica superior $x^2 + y^2 + z^2 = 1$, $z gt.eq 0$.
