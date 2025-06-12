#import "@preview/physica:0.9.5": *
#show: super-plus-as-dagger

#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit

// Meta data
#set document(title: "Resumen de Física Cuántica II (Unir Física)", author: "Alberto Corbi")

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

#let normalsize = 10pt
#let large = 18pt
#set text(size: normalsize, lang: "es")


#set par(justify: true)

#show heading.where(level: 1): it => text(
  size: normalsize,
  weight: "bold",
  fill: headcolor,
  it.body + h(0.67em),
)

#show: rest => columns(3, rest, gutter: .4cm)

#align(
  center,
  link("https://bit.ly/unirfiscuantica2")[
    #text(large, headcolor)[#context document.title]
  ],
)

#image("logo resumen cuantica ii.png")

#show align: it => {
  v(10pt)
  text(size: 12pt, it)
}

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
  + Multiplicar un ket por un número complejo no cambia el estado.
  + El producto interno es lineal y devuelve un complejo: $braket(alpha, beta) = braket(beta, alpha)^*$.
  + El producto interno es positivo definido: $braket(alpha, alpha) >= 0$.

= Operadores
- Representan _observables físicos_ y actúan sobre kets: $A ket(alpha)$.
- _Autoestados_ y _autovalores_: Si $A ket(a) = a ket(a)$, $arrow.long ket(a)$ es autoestado con autovalor $a$.
- _Operador hermítico_: igual a su adjunto, tiene autovalores
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
  bra(mu) = (2i)^*bra(beta_1) + (1-3i)^*bra(beta_2) =\
  -2i bra(beta_1) + (1+3i)bra(beta_2)
$

- Calcular el producto interno $braket(mu, mu)$, suponiendo que $ket(beta_1)$ y $ket(beta_2)$ son ortonormales.


$
  braket(mu, mu) = abs(2i)^2 + abs(1-3i)^2 =\
  4+(1^2+3^2) = 4+10=14
$

- Normalizar el ket del ejercicio 1. Se divide por la raíz del producto interno (norma):

$
  ket(mu_"norm") = 1 / sqrt(14)(2i ket(beta_1)+(1-3i) ket(beta_2))
$

- Dado un ket general:

$
  ket(alpha) = sum_j c_j (alpha) ket(a_j)
$
con $ket(a_j)$ formando una base ortonormal, calcular su
norma:

$
  norm(ket(alpha)) = sqrt(sum_i abs(c_i (alpha))^2)
$

- Calcular el elemento matricial del operador:
$
  Y = X ket(alpha) bra(beta)
$

Usando la relación de completitud:

$ Y_(i j) = sum_k X_(i k) c_k (alpha) c_j^* (beta) $

Es decir, se expande el operador $Y$ como una combinación matricial
usando coeficientes del ket $ket(alpha)$ y del bra $bra(beta)$.


#align(center)[*Tema 2: Medidas y observables*]

= Medidas en mecánica cuántica
- El resultado de una medida es un autovalor de un operador hermítico.

- La probabilidad de obtener ese autovalor es el cuadrado del módulo del producto interno entre el estado cuántico y el autovector asociado.
- Tras la medida, el sistema colapsa al autoestado correspondiente.

= Valor esperado
- El valor esperado de un observable $A$ en un estado $ket(alpha)$
  se define como:
  $
    expval(A) = mel(alpha, A, alpha) = sum a' abs(braket(a', a))^2
  $

- No confundir con los autovalores: es una media ponderada por probabilidades.

= Sistema de espín 1/2
- El espín tiene solo dos estados: $ket(+)$ y $ket(-)$.
- Se definen operadores como $S_z, S_(+), S_(-)$ y sus representaciones matriciales.
- Los operadores $S_x$ y $S_y$ se construyen mediante combinaciones lineales y fases complejas, ilustrando la necesidad de usar números complejos en mecánica cuántica.

= Conmutadores y anticonmutadores
- Conmutador: $[A, B] = A B - B A$

- Anticonmutador: ${A, B} = A B + B A$
- En sistemas de espín 1/2:

  $
    [S_i, S_j] = i planck.reduce epsilon.alt_(i j k) S_k quad upright("y") quad {S_i , S_j} = planck.reduce^2 / 2 delta_(i j)
  $

= Observables compatibles
- Dos observables son compatibles si sus operadores conmutan:
  $[A, B] = 0$.
- Tienen autovectores comunes: pueden ser medidos simultáneamente sin alterar el estado.

= Observables incompatibles
- Son aquellos cuyos operadores no conmutan: no tienen
  autoestados comunes.

- No es posible medirlos simultáneamente con certeza.

= Operador y matriz de transformación
- Para cambiar de base entre autoestados de dos observables diferentes se usa un operador unitario $U$:
  $
    ket(b') = U ket(a')
  $

- La representación matricial de $U$ se obtiene a partir de los
  productos internos entre las bases.

= Diagonalización
- Consiste en hallar una base en la que el operador tenga forma
  diagonal, lo cual simplifica los cálculos.
- Se utiliza el teorema del determinante: $det (B - lambda I ) = 0$
  para encontrar autovalores.

= Otros conceptos
- Traza de un operador: suma de elementos diagonales, independiente de base.
- Cambio de base y transformación de operadores: se expresan como $X' = U^+ X U$.
