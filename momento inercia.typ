
#set page(
  paper: "jp-business-card",
  margin: 0.3cm,
  height: auto,
  background: rotate(
    24deg,
    par(
      text(48pt, fill: rgb("#00c8b428"), weight: "bold")[
        UNIR Física
      ],
    ),
  ),
)
#set text(font: "Comic neue", size: 6pt)
#import "@preview/wrap-it:0.1.1": wrap-content
Momento de inercia de una lámina rectangular desde eje perpendicular por su punto medio.


#let fig = image("cuadrado.svg", width: 120%)

#let body = [
  Sean
  - $a$ el lado mayor de la placa.
  - $b$ el lado menor de la placa.
  - $c$ el grosor de la misma.

  Tomaremos una tira de espesor $d r$ y situada a una distancia $r$ del plano que pasa por el eje, paralelo al lado $b$. La masa de esa tira elemental es:
  $
    d m = rho d V = rho b c d r,
  $
  y el momento de inercia de la placa respecto al plano:
  $
    I' = integral r^2 thin d m = integral r^2 rho b c d r = rho b c integral r^2 d r.
  $

  Los límites de integración son $a slash 2$ y $- a slash 2$, con lo que el momento de inercia es:
  $
    I' = rho b c integral_(-a / 2)^(a / 2) r^2 d r = rho b c (a^3 / 24 + a^3 / 24) = 1 / 12 rho b c a^3.
  $
  Como la masa total de la lámina es: $m = rho V = rho b c a$, queda finalmente: $I'=1/12 m a^2$.

  Pero esto aún no es el momento de inercia. Hemos de proceder de manera análoga respecto al otro plano que pasa por el eje y sea perpendicular al anterior (paralelo al lado $a$). Obtenenemos:
  $
    I'' = 1 / 2 m b^2
  $
  Y finalmente, teniendo en cuenta que el momento de inercia respecto al eje es la suma de los momentos de inercia respecto a los planos considerados, tenemos:
  $
    I = I' + I'' = 1 / 12 m (a^2 + b^2)
  $
]
#wrap-content(fig, body, align: right + top)
