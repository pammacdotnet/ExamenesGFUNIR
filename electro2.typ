
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

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Electro II - Grado en Física (UNIR)]]

=
Indica si es verdadero o falso las siguientes afirmaciones.
- La intensidad instantánea, en un circuito en serie de corriente
  alterna y para un momento determinado cualquiera, tiene el mismo
  valor en todos los puntos del circuito.
- La impedancia, $Z$, de un circuito de corriente alterna relaciona los
  valores instantáneos de la f.e.m y de la intensidad.
- La suma algebraica de las f.e.m para las distintas partes de un
  circuito en serie corriente alterna, da la f.e.m total del circuito.
- Un circuito de corriente alterna que tenga como único elemento un
  condensador no consume potencia al paso de la corriente.
- La intensidad eficaz máxima de una corriente alterna se obtiene en el caso de que la reactancia sea nula.

=
Explica cuál es la diferencia entre polos magnéticos y geomagnéticos.

=
Se tienen dos campos vectoriales en el vacío expresados en coordenadas cartesianas por:

$
  upright(bold(A))_1 = \( 2 x y + z \) hat(upright(bold(x))) + \( x^2 - 2 y \) hat(upright(bold(y))) + x hat(upright(bold(z)))
$

$
  upright(bold(A))_2 = \( 1 + 2 x \) hat(upright(bold(x))) - y^2 z hat(upright(bold(y))) + \( z^2 y - 2 z + 1 \) hat(upright(bold(z)))
$

Uno de ellos es un campo electrostático $upright(bold(E))$ y el otro es
magnetostático $upright(bold(H))$.

- Teniendo en cuenta las expresiones de las ecuaciones de Maxwell para
  campos estáticos, identificar cada uno de los campos anteriores,
  sabiendo que uno de ellos es un campo eléctrico y el otro un campo
  magnético.

- Determinar el potencial eléctrico escalar del que deriva el campo
  eléctrico.


=
Una onda electromagnética plana y uniforme tiene el campo eléctrico
orientado en el eje $x$ e incide perpendicularmente en el sentido
vertical hacia abajo (eje $z$) sobre la superficie del mar que tiene
los siguientes parámetros:

$ sigma = 4 S \/ m \, quad epsilon = 81 epsilon_0 \, quad mu = mu_0 $
La expresión instantánea del campo eléctrico en $z = 0$ (debajo justo de
la superficie del agua) es:

$
  upright(bold(E))_x \( z \, t \) = 100 e^(- alpha z) cos \( 2 pi 3000 t - beta z \) hat(upright(bold(x))) quad upright("V/m")
$

Donde $alpha$ y $beta$ son, respectivamente, las constantes de
atenuación y fase del agua de mar. \
Calcular:
- Los valores de las constantes $alpha$ y $beta$.
- La longitud de onda, la velocidad de fase y la impedancia intrínseca en el agua del mar.
- La expresión instantánea del campo magnético.

=
En la figura se tiene una esfera conductora de radio $a$ que lleva una
carga $q$ y que está situada en un medio de permitividad $epsilon_0$
en el que existe un campo vertical uniforme $E_0$. Calcular el
potencial eléctrico en un punto $P \( r \, theta \, phi.alt \)$. (2
pts)

=
En el circuito de la figura, determinar el equivalente de Thévenin entre los terminales $A$ y $B$. (2 pts)

#v(2cm)
#info(title: "Soluciones polinomios de Legendre")[
  $ Theta \( theta \) = P_l \( cos \( theta \) \) $

  La función $P_l \( x \)$ se define por la fórmula de Rodrigues:

  $ P_l \( x \) = frac(1, 2^l l !) (frac(d, d x))^l \( x^2 - 1 \)^l $

  Algunos primeros polinomios de Legendre:

  #figure(
    align(center)[#table(
        columns: 2,
        align: (auto, auto),
        table.header([Orden $l$], [Polinomio]),
        table.hline(),
        [$l = 0$], [$P_0 \( x \) = 1$],
        [$l = 1$], [$P_1 \( x \) = x$],
        [$l = 2$], [$P_2 \( x \) = frac(3 x^2 - 1, 2)$],
        [$l = 3$], [$P_3 \( x \) = frac(5 x^3 - 3 x, 2)$],
      )],
    kind: table,
  )
]

#info(title: "Diferenciales")[
  - Cartesianas
  $ d upright(bold(r)) = d x hat(upright(bold(x))) + d y hat(upright(bold(y))) + d z hat(upright(bold(z))) $
  $ d upright(bold(S)) = d y d z hat(upright(bold(x))) + d x d z hat(upright(bold(y))) + d x d y hat(upright(bold(z))) $
  $ d V = d x d y d z $
  - Cilíndricas

  $ d bold(rho) = d rho hat(bold(rho)) + rho d phi.alt hat(bold(phi.alt)) + d z hat(upright(bold(z))) $
  $
    d upright(bold(S)) = rho d phi.alt d z hat(bold(rho)) + d rho d z hat(bold(phi.alt)) + rho d rho d phi.alt hat(upright(bold(z)))
  $
  $ d V = rho d rho d phi.alt d z $

  - Esféricas
  $
    d upright(bold(r)) = d r hat(upright(bold(r))) + r d theta hat(bold(theta)) + r sin theta d phi.alt hat(bold(phi.alt))
  $
  $
    d upright(bold(S)) = r^2 sin theta d theta d phi.alt hat(upright(bold(r))) + r sin theta d r d phi.alt hat(bold(theta)) + r d r d theta hat(bold(phi.alt))
  $
  $ d V = r^2 sin theta d r d theta d phi.alt $
]


#info(title: "Cálculo vectorial")[
  - Gradiente

  $
    nabla f = frac(partial f, partial x) hat(upright(bold(i))) + frac(partial f, partial y) hat(upright(bold(j))) + frac(partial f, partial z) hat(upright(bold(k)))
  $

  - Divergencia

  $
    nabla dot.op upright(bold(F)) = frac(partial F_x, partial x) + frac(partial F_y, partial y) + frac(partial F_z, partial z)
  $

  - Rotacional

  $
    nabla times upright(bold(F)) = mat(delim: "|", hat(upright(bold(i))), hat(upright(bold(j))), hat(upright(bold(k))); frac(partial, partial x), frac(partial, partial y), frac(partial, partial z); F_x, F_y, F_z)
  $
]
