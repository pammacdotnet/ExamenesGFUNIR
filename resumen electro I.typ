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
    #text(large, headcolor)[*Resumen Electro I – UNIR Física*]
  ],
)

// Put this here to avoid affecting the title
#show link: underline

#image("uf.png")

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

= Campo eléctrico.
Expresión matemática:
$ arrow(E) = lim_(q arrow.r 0) arrow(F) / q $
$ arrow(E) (arrow(r)) = sum_i frac(1, 4 pi epsilon.alt_0) q_i / r_i^2 hat(r)_i $

= Líneas de campo eléctrico.
Representan visualmente la dirección y magnitud del campo. Salen de cargas positivas y entran en negativas. No se cruzan. Su densidad representa la intensidad del campo.

= Movimiento de partículas cargadas.
Una partícula en un campo eléctrico experimenta: $arrow(a) = frac(q arrow(E), m)$.
Si $arrow(E) = "cte"$, la aceleración también.

#align(center)[#v(1cm)*Tema 2: Ley de Gauss*]

= Flujo eléctrico.
El flujo eléctrico representa la cantidad de campo eléctrico
que atraviesa una superficie. Para un campo uniforme: $Phi = arrow(E) dot.op arrow(A) = E A cos theta$. En superficies curvas o campos no uniformes: $Phi = integral_S arrow(E) dot.op d arrow(A)$. Positivo si las líneas salen de la superficie, negativo si entran.

= Ley de Gauss.
Relaciona el flujo eléctrico neto en una superficie cerrada con la carga neta encerrada:
$Phi = integral.cont_S arrow(E) dot.op d arrow(A) = q_(i n) / epsilon.alt_0$. Independiente de la forma de la superficie. Útil solo si simetría: esférica, cilíndrica o plana.

= Línea de carga infinita.
Para densidad lineal $lambda$: $E = frac(lambda, 2 pi epsilon.alt_0 r)$

= Plano cargado infinito.
Para densidad superficial $sigma$: $E = frac(sigma, 2 epsilon.alt_0)$.

= Esfera uniformemente cargada.
Fuera de la esfera ($r > R$): $E = frac(Q, 4 pi epsilon.alt_0 r^2)$. Dentro de la esfera ($r < R$). $E = frac(rho r, 3 epsilon.alt_0)$ $Q = rho dot.op 4 / 3 pi R^3$.

= Conductores en equilibrio.
$arrow(E) = 0$ en el interior. Campo eléctrico normal a la superficie. La carga reside en la superficie: $E = sigma / epsilon.alt_0$.

= Esfera y cascarón.
Una esfera con carga $+ 3 Q$ y un cascarón con $- Q$: $ E(r) = cases(delim: "{", frac(3 Q, 4 pi epsilon.alt_0 r^2) quad quad a < r < b, 0 quad quad b < r < c, frac(Q, 2 pi epsilon.alt_0 r^2) quad quad r > c) $


= Teorema de la divergencia (de Gauss)
Relaciona la integral de superficie de un campo con su divergencia en volumen: $integral.cont_S arrow(E) dot.op d arrow(A) = integral_V(nabla dot.op arrow(E)) thin d V$.

= Divergencia del campo eléctrico
Partiendo de la ley de Gauss y usando el teorema de la divergencia: $nabla dot.op arrow(E) = rho / epsilon.alt_0$. Es la _forma diferencial_ de la Ley de Gauss y una de las Ecuaciones de Maxwell.

#align(center)[#v(1cm)*Tema 3: Potencial eléctrico*]

= Potencial eléctrico.
Es una cantidad escalar que permite describir fenómenos electrostáticos de forma más simple que usando el campo eléctrico (E). Está relacionado con el campo eléctrico mediante la ecuación: $ arrow(E) = - nabla phi.alt $. Para cargas discretas: $ phi.alt(arrow(r)) = sum frac(q_i, 4 pi epsilon_0 r_(i q)) $. Para distribuciones continuas se integra en volumen, superficie o línea.

= Propiedades del potencial.
El campo eléctrico derivado del potencial es conservativo: $nabla times arrow(E) = 0$. El potencial puede definirse hasta una constante aditiva. Normalmente se toma $phi.alt = 0$ en el infinito.

= Diferencia de potencial y superficies equipotenciales.
La diferencia de potencial entre puntos es:
$phi.alt(arrow(r)_2) - phi.alt(arrow(r)_1) = - integral_(arrow(r)_1)^(arrow(r)_2) arrow(E) dot.op d arrow(l)$. Las superficies equipotenciales son perpendiculares a las líneas de $arrow(E)$.

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


#align(center)[#v(1cm)*Tema 4: Multipolos*]

= Desarrollo multipolar del potencial.
Expansión del potencial eléctrico como $1/r$:
$
  phi.alt(r) = frac(1, 4 pi epsilon.alt_0) [Q / r + frac(p dot.op hat(r), r^2) + upright("cuadrupolo") / r^3 + dots.h]
$. Cada término describe una contribución del sistema de cargas: monopolo ($Q$), dipolo ($p$), cuadripolo, ($Q_(j k)$), etc.

= Dipolo eléctrico.
Es el segundo término de la expansión. Dominante cuando la carga neta es cero. El momento dipolar se define como: $arrow(p) = sum q_i arrow(r)_i$. El potencial de un dipolo:
$phi.alt_D(r) = frac(1, 4 pi epsilon.alt_0) frac(arrow(p) dot.op hat(r), r^2)$. El campo eléctrico dipolar decae como $1 slash r^3$.

= Cuadripolo eléctrico.
Es el 3er término del desarrollo y se representa mediante un tensor simétrico:
$
  Q_(j k) = sum q_i(3 x_(i j) x_(i k) - r_i^2 delta_(j k))
$ Permite describir distribuciones más complejas donde incluso
el momento dipolar es nulo.

= Dipolo en campo externo.
Un dipolo en un campo eléctrico experimenta una fuerza y un momento de torsión. El comportamiento depende de la orientación entre $arrow(p)$
y $arrow(E)$.

= Superficies de discontinuidad.
Se estudian los cambios del campo eléctrico en la transición entre dos medios diferentes. Estas discontinuidades idealizadas permiten modelar con facilidad materiales compuestos (como dieléctricos o conductores).

= Condiciones de frontera.
Derivadas de las leyes de Gauss y de Faraday. Componente normal del campo eléctrico: $E_(1, n) - E_(2, n) = sigma / epsilon.alt_0$, donde $sigma$ es la densidad superficial de carga. Componente tangencial del campo eléctrico: $E_(1, t) = E_(2, t)$. Estas condiciones determinan cómo se comporta el campo al pasar de un medio a otro.

#align(center)[#v(1cm)*Tema 5: Capacitancia*]

= Capacidad.
Definición: $C = Q / V$ donde $Q$ es la carga en el conductor y $V$ la diferencia de potencial. Unidades: Faradios (F), donde 1 F = 1 C/V. Depende de la geometría y del medio dieléctrico entre los conductores.

= Ejemplos de capacidad.
Placas paralelas: $C = frac(epsilon_0 A, d)$ Esferas concéntricas: $C = frac(4 pi epsilon_0 a b, b - a)$. Cilindros coaxiales: $C = frac(2 pi epsilon_0 L, ln ( b / a ))$.

= Energía almacenada.
En un conductor: $U = 1 / 2 Q V = 1 / 2 Q^2 / C$. En un condensador: $U = 1 / 2 C V^2$.

= Polarización.
Definición: momento dipolar por unidad de volumen: $arrow(P) = frac(d arrow(p), d v)$. Puede ser inducida por un campo eléctrico externo o permanente. Afecta al campo y a la distribución de cargas.

= Cargas ligadas.
Se generan dentro de materiales polarizados:
Volumétrica: $rho_b = - nabla dot.op arrow(P)$. Superficial: $sigma_b = arrow(P) dot.op hat(n)$.

= Campo eléctrico en dieléctrico.
La polarización reduce el campo eléctrico dentro del dieléctrico: $arrow(E) = arrow(E)_0 - arrow(P) / epsilon_0$. Se
conserva la densidad de desplazamiento eléctrico: $arrow(D) = epsilon_0 arrow(E) + arrow(P)$.

= Campo $arrow(D)$.
Relacionado con las cargas libres:
$nabla dot.op arrow(D) = rho_f$. Es útil para simplificar cálculos en presencia de dieléctricos.

= Tipos de dieléctricos.
Isotrópicos lineales: $arrow(P) = epsilon_0 chi_e arrow(E) quad upright("y") quad arrow(D) = epsilon arrow(E)$ donde $epsilon = epsilon_0(1 + chi_e)$ y $k_e = 1 + chi_e$. Otros tipos incluyen dieléctricos no lineales o anisotrópicos.

= Capacidad con dieléctrico.
Aumenta con la constante dieléctrica: $C = k_e C_0$. El dieléctrico reduce la diferencia de potencial y aumenta la energía almacenada para un $V$.

= Energía en dieléctrico.
$U = 1 / 2 integral arrow(D) dot.op arrow(E) thin d V = 1 / 2 epsilon E^2$.

#align(center)[*Tema 6: Corrientes*]
= Corriente eléctrica.
Corriente ($I$): flujo de carga por unidad de tiempo $I = frac(d q, d t)$. Densidad de corriente volumétrica ($J$): $arrow(J) = rho arrow(v)$.
También se define densidad superficial y filamental de corriente.

= Ley de Ohm.
Relaciona el campo eléctrico con la corriente:
$arrow(J) = sigma arrow(E)$. A nivel macroscópico: $V = I R$, con $R = frac(l, sigma A)$.

= Ley de Ampère.
Establece la fuerza entre corrientes eléctricas. La fuerza por unidad de longitud entre dos hilos paralelos: $ f = frac(mu_0 I_1 I_2, 2 pi rho) $
Corrientes en el mismo sentido se atraen, en sentidos opuestos se repelen.

= Campo magnético $arrow(B)$.
Definido mediante la ley de Biot-Savart:
$
  arrow(B) \( arrow(r) \) = frac(mu_0, 4 pi) integral frac(arrow(J) \( arrow(r') \) times \( arrow(r) - arrow(r') \), \| arrow(r) - arrow(r') \|^3) d V'
$
El campo es perpendicular al flujo de corriente y a la posición del
punto.

= Líneas de campo y flujo magnético.
Las líneas de campo forman circuitos cerrados. Ley de Gauss para el
magnetismo: $integral.cont arrow(B) dot.op d arrow(A) = 0$.

= Ley de Ampère (forma integral y diferencial)
Forma integral:
$ integral.cont_C arrow(B) dot.op d arrow(l) = mu_0 I_(upright("encerrada")) $
Diferencial: $ nabla times arrow(B) = mu_0 arrow(J) $

= Fuerza de Lorentz.
Describe la fuerza sobre una partícula cargada:
$ arrow(F) = q \( arrow(E) + arrow(v) times arrow(B) \) $


#align(center)[#v(1cm)*Tema 7: Inducción*]

= Ley de Faraday.
Enuncia que: $ epsilon_(upright("ind")) = - frac(d Phi_B, d t) $ El
signo negativo es la ley de Lenz: la corriente inducida se opone al cambio que la produce.

= Campos eléctricos inducidos.
Un campo magnético variable induce un campo eléctrico no conservativo.
Generalización:
$ integral.cont_C arrow(E) dot.op d arrow(l) = - frac(d Phi_B, d t) $
Relación con la ecuación de Maxwell:
$ nabla times arrow(E) = - frac(partial arrow(B), partial t) $

= Medios estacionarios vs. en movimiento.
Estacionarios: el circuito no se mueve, pero el campo cambia. En
movimiento: el circuito se mueve en un campo magnético constante.
Aparece una FEM de movimiento:
$ epsilon_m = integral.cont(arrow(v) times arrow(B)) dot.op d arrow(l) $

= Inductancia.
Mutua: una corriente variable en una bobina induce una FEM en otra
cercana. $ epsilon_2 = - M frac(d i_1, d t) $ Autoinductancia: una
corriente variable induce una FEM en la misma bobina.
$ epsilon_L = - L frac(d i, d t) $ Depende solo de la geometría del
sistema.




#align(center)[#v(1cm)*Tema 8: Potencial vectorial*]
= Potencial vectorial $arrow(A)$.
Se define como: $ arrow(B) = nabla times arrow(A) $
La divergencia del campo magnético es nula:
$ nabla dot.op arrow(B) = 0 arrow.r.double arrow(A) upright(" existe") $
No es único: puede sumarse un gradiente sin cambiar $arrow(B)$:
$arrow(A)' = arrow(A) + nabla chi$.
Ejemplos: hilo recto, solenoide ideal → permiten obtener $arrow(A)$ fácilmente por simetría.

= Inductancia.
Mutua: $ Phi_(2 arrow.r 1) = M_12 I_2 $
Propia (autoinductancia):
$ L = frac(mu_0, 4 pi) integral.cont_C integral.cont_(C') frac(d arrow(l) dot.op d arrow(l)', r) $
Se puede expresar en términos del potencial vectorial:
$Phi = integral.cont arrow(A) dot.op d arrow(l)$.

= Energía magnética.
Energía de un sistema de $N$ corrientes:
$ U_B = 1 / 2 sum_(i = 1)^N sum_(j = 1)^N M_(i j) I_i I_j $
En función del flujo: $ U_B = 1 / 2 sum_(i = 1)^N I_i Phi_i $
Para corrientes distribuidas:
$ U_B = 1 / 2 integral arrow(J) dot.op arrow(A) thin d V $
En función de $arrow(B)$:
$ U_B = integral frac(B^2, 2 mu_0) thin d V quad upright("y") quad u_B = frac(B^2, 2 mu_0) $

= Multipolos magnéticos.
El desarrollo multipolar del potencial vectorial se expresa como:
$ arrow(A) \( arrow(r) \) = frac(mu_0 I, 4 pi r^2) thin \( arrow(m) times hat(r) \) $
Momento dipolar magnético: $ arrow(m) = I dot.op arrow(a) $
Campo magnético de un dipolo:
$ arrow(B) = nabla times arrow(A) = frac(mu_0, 4 pi r^3) \( 2 cos theta hat(r) + sin theta hat(theta) \) $


#align(center)[#v(1cm)*Tema 9: Magnetización*]

= Magnetización
Origen microscópico: electrones en movimiento generan momentos dipolares
magnéticos. En presencia de un campo externo, estos dipolos pueden
alinearse y contribuir al campo total → el material se magnetiza.
Algunos materiales presentan magnetización espontánea, incluso sin campo
externo. Se define la magnetización $arrow(M)$ como el momento dipolar
por unidad de volumen.

= Corrientes de magnetización.
La magnetización genera corrientes equivalentes:

- Volumétricas: $arrow(J)_b = nabla times arrow(M)$
- Superficiales: $arrow(K)_b = arrow(M) times hat(n)$

Estas corrientes generan un campo magnético $arrow(B)$, equivalente al
de las corrientes reales.

= El campo $arrow(H)$.
Se define para separar el efecto de las corrientes libres de las
corrientes de magnetización: $ arrow(H) = arrow(B) / mu_0 - arrow(M) $
Cumple la ley de Ampère para las corrientes libres:
$ nabla times arrow(H) = arrow(J)_f $ Es útil porque permite estudiar
materiales sin conocer su estructura interna.

= Materiales magnéticos isótropos lineales.
Relación lineal entre $arrow(M)$ y $arrow(H)$:
$ arrow(M) = chi_m arrow(H) $

- $chi_m > 0$: paramagnético.
- $chi_m < 0$: diamagnético.

Relación entre $arrow(B)$ y $arrow(H)$:
$ arrow(B) = mu arrow(H) quad upright("con") quad mu = mu_0 \( 1 + chi_m \) $

= Materiales ferromagnéticos.
Dipolos atómicos permanentes que pueden alinearse incluso sin campo
externo. Forman dominios magnéticos, que se reorientan ante un campo. El
material permanece magnetizado al retirar el campo → histéresis.

= Curva de histéresis.
Representa $arrow(B)$ vs.~$arrow(H)$. Saturación: todos los dominios
alineados. Remanencia: $B eq.not 0$ cuando $H = 0$. Fuerza coercitiva:
campo necesario para desmagnetizar. El área encerrada representa energía
disipada.

= Materiales superconductores.
Propiedades extraordinarias, como resistencia eléctrica nula. Rechazan
campos magnéticos (efecto Meissner).


#align(center)[#v(1cm)*Tema 10: Ecuaciones de Maxwell*]

= Ecuaciones de la electrodinámica.
Las 4 ecuaciones fundamentales son:

+ Ley de Gauss:
  $ nabla dot.op arrow(E) = rho / epsilon_0 $

+ Ausencia de monopolos magnéticos:
  $ nabla dot.op arrow(B) = 0 $

+ Ley de Faraday (inducción):
  $ nabla times arrow(E) = - frac(partial arrow(B), partial t) $

+ Ley de Ampère (modificada por Maxwell):
  $ nabla times arrow(B) = mu_0 arrow(J) + mu_0 epsilon_0 frac(partial arrow(E), partial t) $

Maxwell corrigió la ley de Ampère añadiendo el término de corriente de
desplazamiento:

$ arrow(J)_d = epsilon_0 frac(partial arrow(E), partial t) $

= Maxwell en la materia.
En materiales:

- Se separan cargas y corrientes libres de las ligadas (por polarización
  o magnetización).
- Introducen los campos auxiliares:
  - $arrow(D) = epsilon_0 arrow(E) + arrow(P)$
  - $arrow(H) = arrow(B) / mu_0 - arrow(M)$

Ecuaciones en medios materiales (con $arrow(P)$ y $arrow(M)$):

$
  nabla dot.op arrow(D) & = rho_f\
  nabla dot.op arrow(B) & = 0\
  nabla times arrow(E) & = - frac(partial arrow(B), partial t)\
  nabla times arrow(H) & = arrow(J)_f + frac(partial arrow(D), partial t)
$

= Condiciones de frontera.
Describen cómo cambian los campos en la interfaz entre dos materiales:

- $D_(1 n) - D_(2 n) = sigma_f$
- $B_(1 n) = B_(2 n)$
- $E_(1 t) = E_(2 t)$
- $H_(1 t) - H_(2 t) = arrow(K)_f times hat(n)$

= Teorema de Poynting.
Describe la conservación de la energía electromagnética:

$ frac(d W, d t) = - frac(d, d t) integral_V u thin d v - integral.cont_S arrow(S) dot.op d arrow(a) $

- Densidad de energía: $ u = 1 / 2 epsilon_0 E^2 + frac(1, 2 mu_0) B^2 $

- Vector de Poynting: $ arrow(S) = 1 / mu_0 arrow(E) times arrow(B) $

Indica la dirección y flujo de energía electromagnética.

= Potenciales escalar y vectorial.
Para simplificar la resolución de las ecuaciones de Maxwell:

- Campo eléctrico:
  $ arrow(E) = - nabla phi.alt - frac(partial arrow(A), partial t) $
- Campo magnético: $ arrow(B) = nabla times arrow(A) $
