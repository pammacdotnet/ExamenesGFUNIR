
#import "@preview/unify:0.7.1": qty
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

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Electro I (Unir Física)]]

=
Sean tres cargas: $q_1 = #qty(5, "micro coulomb")$, $q_2 = #qty(-2, "micro coulomb")$ y $q_3 = #qty(1, "micro coulomb")$ en las posiciones: $(1, 0, 0)$, $(0, 1, 0)$ y $(0, 0, 1)$, respectivamente. Calcula la fuerza eléctrica ejercida sobre la carga $q_3$ teniendo en cuenta que $1 slash 4 pi epsilon_0 = #qty("9E9", "newton meter squared per coulomb squared")$.
=
Sea un campo de fuerzas:
$
  arrow(E)(x, y, z) = 2 x y hat(x) + (x^2 - z) hat(y) - y hat(z).
$
expresado en unidades arbitrarias.
- Justifica si el campo se corresponde o no a un campo electrostático.
- Calcula el trabajo realizado para mover una carga $q$ desde el punto $(1,0,0)$ al $(0,2,0)$ a lo largo de una línea recta que los conecta.

#import "@preview/meander:0.3.0"

#meander.reflow({
  import meander: *

  // As many obstacles as you want
  placed(bottom + left, image("condensador.svg", width: 6cm))

  // The container wraps around all
  container()
  content[
    =

    Sea un condensador de placas paralelas, de área A, cargadas $+Q$ y $-Q$, y separadas una distancia d. Entre sus placas se coloca una capa de dieléctrico, de permitividad dieléctrica relativa $k_1$ de grosor $d slash 3$, y otra capa de dieléctrico, de permitividad dieléctrica relativa $k_2$ ocupando el resto del espacio (grosor $2d slash 3$). Desprecia el efecto de los bordes de las placas.

    En función de $Q$, $A$, $d$, $k_1$ y $k_2$:
    - Calcula el campo eléctrico y el vector desplazamiento en el interior.
    - Calcula la densidad de polarización y las densidades de carga de polarización existentes.

    =

    Sea una espira conductora cuadrada, de lado $a$, dispuesta en el plano $X Y$, por el que circula una corriente $I$.
    - Calcula el momento dipolar magnético.
    - Calcula el potencial vector magnético $arrow(A)$ asociado a dicho momento dipolar, en un punto del eje $X$ muy alejado de la espira, definido por $(x, 0, 0)$, donde $x>>a$.

  ]
})


#meander.reflow({
  import meander: *

  // As many obstacles as you want
  placed(horizon + right, image("cable.svg", width: 2.8cm))

  // The container wraps around all
  container()
  content[

    =
    Sea un cable conductor recto infinitamente largo de radio $a$, por el que circula una densidad de corriente dependiente del radio de la forma:
    $
      arrow(J)(r) = J_0(1-r/a)hat(z)
    $
    Calcula el campo magnético producido por dicha corriente en cualquier punto del espacio.



  ]
})
