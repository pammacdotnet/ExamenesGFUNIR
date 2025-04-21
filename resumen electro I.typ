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

= Fundamentos de electroestática.
Ley de Coulomb: fuerza conservativa, central y de tipo newtoniano. Principio de superposición: la fuerza total es la suma vectorial de las fuerzas individuales.

= La carga eléctrica.
Las cargas se adquieren por fenómenos como el rozamiento. Tipos de carga: positiva y negativa.Cuantificación: $q = N e$, donde $e = #qty("1.602e-19", "coulomb")$. Conservación: la carga neta en un sistema aislado permanece constante.

= Ley de Coulomb.
$ arrow(F) = frac(1, 4 pi epsilon.alt_0) frac(q_1 q_2, r^2) hat(r) $
La fuerza entre dos cargas es proporcional al producto de sus cargas e inversamente proporcional al cuadrado de la distancia entre ellas. Dirección: línea que une ambas cargas. Obedece la tercera ley de Newton.

= Distribuciones de carga continua.
Lineal: $lambda(r)$, unidades #unit("coulomb per meter"). Superficial: $sigma(r)$, unidades #unit("coulomb per meter squared"). Volumétrica: $rho(r)$, unidades #unit("coulomb per meter cubed"). Se emplean integrales para calcular la fuerza resultante.

= Campo eléctrico
$ arrow(E) = lim_(q arrow.r 0) arrow(F) / q $
$ arrow(E) (arrow(r)) = sum_i frac(1, 4 pi epsilon.alt_0) q_i / r_i^2 hat(r)_i $

= Líneas de campo eléctrico.
Representan visualmente la dirección y magnitud del campo. Salen de cargas positivas y entran en negativas. No se cruzan. Su densidad representa la intensidad del campo.

= Movimiento de partículas cargadas.
Una partícula en un campo eléctrico experimenta: $arrow(a) = frac(q arrow(E), m)$.
Si $arrow(E)$ es constante, la aceleración también.

#align(center)[*Tema 2: Ley de Gauss*]

= Flujo eléctrico.
El flujo eléctrico representa la cantidad de campo eléctrico
que atraviesa una superficie. Para un campo uniforme: $Phi = arrow(E) dot.op arrow(A) = E A cos theta$. En superficies curvas o campos no uniformes: $Phi = integral_S arrow(E) dot.op d arrow(A)$. Positivo si las líneas salen de la superficie, negativo si entran.

= Ley de Gauss.
Relaciona el flujo eléctrico neto en una superficie cerrada con la carga neta encerrada:
$Phi = integral.cont_S arrow(E) dot.op d arrow(A) = q_(i n) / epsilon.alt_0$. Independiente de la forma de la superficie. Útil solo si hay simetría: esférica, cilíndrica o plana.

= Línea de carga infinita.
Para densidad lineal $lambda$: $E = frac(lambda, 2 pi epsilon.alt_0 r)$

= Plano cargado infinito.
Para densidad superficial $sigma$: $E = frac(sigma, 2 epsilon.alt_0)$.

= Esfera uniformemente cargada.
Fuera de la esfera ($r > R$): $E = frac(Q, 4 pi epsilon.alt_0 r^2)$. Dentro de la esfera ($r < R$). $E = frac(rho r, 3 epsilon.alt_0)$ $Q = rho dot.op 4 / 3 pi R^3$.

= Conductores en equilibrio.
$arrow(E) = 0$ en el interior. Campo eléctrico normal a la superficie. La carga reside en la superficie: $E = sigma / epsilon.alt_0$.

= Esfera y cascarón
Una esfera con carga $+ 3 Q$ y un cascarón con $- Q$: $ E(r) = cases(delim: "{", frac(3 Q, 4 pi epsilon.alt_0 r^2) quad quad a < r < b, 0 quad quad b < r < c, frac(Q, 2 pi epsilon.alt_0 r^2) quad quad r > c) $


= Teorema de la divergencia (de Gauss)
Relaciona la integral de superficie de un campo con su divergencia en volumen: $integral.cont_S arrow(E) dot.op d arrow(A) = integral_V(nabla dot.op arrow(E)) thin d V$.

= Divergencia del campo eléctrico
Partiendo de la ley de Gauss y usando el teorema de la divergencia: $nabla dot.op arrow(E) = rho / epsilon.alt_0$. Es la _forma diferencial_ de la Ley de Gauss y una de las Ecuaciones de Maxwell.

#align(center)[*Tema 3: Potencial eléctrico*]

= Potencial eléctrico.
Es una cantidad escalar que permite describir fenómenos electrostáticos de forma más simple que usando el campo eléctrico (E). Está relacionado con el campo eléctrico mediante la ecuación: $arrow(E) = - nabla phi.alt$. Para cargas discretas: $phi.alt(arrow(r)) = sum frac(q_i, 4 pi epsilon_0 r_(i q))$. Para distribuciones continuas se integra en volumen, superficie o línea según el caso.

= Propiedades del potencial.
El campo eléctrico derivado del potencial es conservativo: $nabla times arrow(E) = 0$. El potencial puede definirse hasta una constante aditiva. Normalmente se toma $phi.alt = 0$ en el infinito.

= Diferencia de potencial y superficies equipotenciales.
La diferencia de potencial entre dos puntos es:
$phi.alt(arrow(r)_2) - phi.alt(arrow(r)_1) = - integral_(arrow(r)_1)^(arrow(r)_2) arrow(E) dot.op d arrow(l)$. Las superficies equipotenciales son perpendiculares a las líneas de campo eléctrico.

= Potenciales de configuraciones específicas.
Esfera cargada. Fuera: $phi.alt = frac(q, 4 pi epsilon_0 r)$. Dentro: $phi.alt = frac(q, 8 pi epsilon_0 a) (3 - r^2 / a^2)$. Línea cargada infinita: $phi.alt(rho) = frac(lambda, 2 pi epsilon_0) ln (rho_0 / rho)$. Anillo cargado sobre eje:
$phi.alt = frac(q, 4 pi epsilon_0 sqrt(x^2 + a^2))$.

= Potencial en conductores.
En equilibrio, el campo eléctrico es cero dentro del conductor. Toda la superficie de un conductor en equilibrio es una superficie equipotencial. Ejemplo: dos esferas conectadas tienen el mismo potencial, lo que permite relacionar sus cargas y radios.

= Energía potencial eléctrica.
Energía de una carga $q$en un punto: $U_e = q phi.alt$. Para dos cargas: $U = frac(q_1 q_2, 4 pi epsilon_0 d)$. Para un sistema de cargas: $U = 1 / 2 sum_i q_i phi.alt_i$. En distribuciones continuas se usa integración.

= Energía en función del campo eléctrico.
Se puede expresar como: $U = integral epsilon_0 / 2 E^2 d V$. Introduce el concepto de densidad de energía eléctrica: $u_e = epsilon_0 / 2 E^2$.

= Aplicaciones destacadas.
Generador de Van de Graaff: acumulación de carga mediante conductores huecos. Experimento de Millikan: determinación de la carga del electrón usando campos eléctricos.


#align(center)[*Tema 4: Multipolos*]

= Desarrollo multipolar del potencial.
Expansión del potencial eléctrico como $1/r$:
$ phi.alt(r) = frac(1, 4 pi epsilon.alt_0) [Q / r + frac(p dot.op hat(r), r^2) + upright("cuadrupolo") / r^3 + dots.h] $
Cada término describe una contribución del sistema de cargas:
monopolo (Q), dipolo (p), cuadripolo, (Qjk), etc.

= Dipolo eléctrico.
Es el segundo término de la expansión. Dominante cuando la carga neta es cero. El momento dipolar se define como: $arrow(p) = sum q_i arrow(r)_i$. El potencial de un dipolo:
$phi.alt_D(r) = frac(1, 4 pi epsilon.alt_0) frac(arrow(p) dot.op hat(r), r^2)$. El campo eléctrico dipolar decae como $1/r^3$.

= Cuadripolo eléctrico.
Es el tercer término del desarrollo y se representa mediante un tensor simétrico:
$Q_(j k) = sum q_i(3 x_(i j) x_(i k) - r_i^2 delta_(j k))$. Permite describir distribuciones de carga más complejas donde incluso
el momento dipolar es nulo.

= Dipolo en campo externo.
Un dipolo en un campo eléctrico externo experimenta una fuerza
y un momento de torsión. El comportamiento depende de la orientación relativa entre $arrow(p)$
y $arrow(E)$.

= Superficies de discontinuidad.
Se estudian los cambios del campo eléctrico en la transición
entre dos medios diferentes. Estas discontinuidades idealizadas permiten modelar con facilidad
materiales compuestos (como dieléctricos o conductores).

= Condiciones de frontera.
Derivadas de las leyes de Gauss y de Faraday. Componente normal del campo eléctrico: $E_(1, n) - E_(2, n) = sigma / epsilon.alt_0$, donde $sigma$ es la densidad superficial de carga. Componente tangencial del campo eléctrico: $E_(1, t) = E_(2, t)$. Estas condiciones determinan cómo se comporta el campo al pasar de un
medio a otro.
