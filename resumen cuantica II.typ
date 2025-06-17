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
  v(.67em) + it.body,
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




#align(center)[*Tema 3: Posición y momento*]

= Espectros continuos
- A diferencia de los sistemas con espectros discretos, en sistemas continuos (como posición y momento), los autovalores abarcan los reales.

- Se sustituyen sumas por integrales y la delta de Kronecker por la delta de Dirac.
- Se conserva la ortonormalidad y completitud, pero adaptadas al continuo.

= Posición y función de onda
- La función de onda es $braket(x, alpha)$, es decir, la proyección del estado cuántico sobre un estado de posición.

- La probabilidad de encontrar una partícula en una región del espacio
  es el módulo al cuadrado de la función de onda.
- La medición colapsa el estado al autoestado correspondiente.

= Traslación
- El _operador de traslación_ infinitesimal $cal(F)(d x)$ traslada un estado de posición: $cal(F)(d x) ket(x) = ket(x + d x)$ .

- Este operador cumple:

  - Es unitario.

  - Satisface composición de traslaciones.
  - Tiende a la identidad cuando $d x arrow 0$.

- Se puede expresar como: $cal(F)(d x) = 1 -i K d x$, donde $K$ es el _generador de traslaciones_.

= Momento $arrow$ generador traslacional
- El operador momento lineal se identifica con el generador de traslaciones, ajustando dimensiones mediante $hbar$:

- $cal(F)(d x) = 1 - i p d x slash hbar$.

- Se deduce la famosa _relación de conmutación_: $[x, p] = i hbar$.

- Las componentes del momento conmutan: $[p_i, p_j] = 0$ y son, por tanto, compatibles.

- El grupo de traslaciones es _abeliano_.

= Función de onda en el espacio de posiciones
- Se define como $psi (x) = braket(x, alpha)$.

- El producto escalar entre estados se expresa como una integral de
  funciones de onda.
- La expansión de un estado incluye coeficientes que representan
  probabilidades.

= Operador momento en el espacio de posiciones
- Se deduce que:

  - $p = -i hbar d slash d x$.

  - En notación de matriz: $mel(x, p, x') = -i hbar d slash d x thin delta (x-x')$.

- Esta forma se obtiene directamente del operador de traslación.

= Función de onda en el espacio de momentos
- Análogamente: $phi(p) = braket(p, alpha)$.

- También tiene interpretación probabilística.

- La base de momentos se obtiene mediante transformación de la base de
  posiciones usando: $braket(x, p) = (1 / sqrt(2 pi hbar))e^(i p x slash hbar)$.

= Transformadas de Fourier
- La función de onda en posición y momento están relacionadas
  mediante transformadas de Fourier: $psi(x) arrow.double phi(p)$.

- Este resultado surge naturalmente del formalismo y unifica las
  representaciones.


#align(center)[*Tema 4: Evolución temporal*]


= Operador de evolución $U(t, t_0)$
- En mecánica cuántica el tiempo no tiene operador asociado; es solo un
  parámetro externo.

- Se introduce el operador de evolución temporal $U(t, t_0)$, que
  transforma un estado inicial en otro tras un tiempo.

- Propiedades:

  - Unitariedad: conserva la probabilidad.

  - Composición: $U(t_2, t_0) = U(t_2, t_1) U(t_1, t_0)$.
  - Límite: $lim_(t arrow.r t_0) U(t, t_0) = 1$.

- Se postula: $U(t_0 + d t, t_0) = 1 - i Omega d t$ con $Omega = H / planck.reduce$, lo que liga la evolución temporal al
  hamiltoniano.

= Ecuación de Schrödinger
- Se deduce como:

  $ i planck.reduce frac(partial, partial t) | psi(t) angle.r = H | psi(t) angle.r $

- Soluciones según el hamiltoniano:

  - Constante:
    $U(t,t_0) = e^(- i H(t - t_0) slash hbar)$

  - Dependiente del tiempo:

    - Si conmuta en distintos tiempos: integral exponencial.
    - Si no conmuta: serie de Dyson.

= Autokets de energía
- Si $[A, H] = 0$, los autoestados de $A$ también lo son de $H$.

- Su evolución temporal es: $ket(a'\, t) = e^(-i E_a' t slash h) ket(a')$

- Los coeficientes de superposición se modifican con factores de fase
  temporales.

= Valores esperados
- Para estados estacionarios: el valor esperado de cualquier observable
  no cambia.

- Para superposiciones: el valor esperado de un observable oscila con
  frecuencia: $omega_(a' a'') = (E_(a'') - E_(a')) slash hbar$.

= Precesión del espín 1/2
- Considerando un campo magnético constante en dirección $z$, el
  hamiltoniano es: $H = omega S_z$.

- El espín precesa en el plano $x y$ con frecuencia angular $omega$, y se demuestra: $expval(S_x) = planck.reduce / 2 cos \( omega t \) \, quad expval(S_y) = planck.reduce / 2 sin \( omega t \) \, quad expval(S_z) = 0$.

= Incertidumbre energía-tiempo
- Aunque el tiempo no tiene operador, existe una relación significativa: $Delta E dot.op Delta t gt.tilde hbar$

- Se introduce la amplitud de correlación $C(t) = braket(alpha(0), alpha(t))$, que mide cuánto ha cambiado el estado en el tiempo.

- Si $C \( t \)$ se aleja significativamente de 1, implica un cambio apreciable del estado, con una escala de tiempo dada por la dispersión energética.

= Ejercicio 1
Demuestra que la cantidad $frac(H dot.op t, planck.reduce)$ carece de dimensiones.

- El hamiltoniano $H$ tiene dimensiones de energía:
  $[H] = [E] = M L^2 T^(- 2)$

- El tiempo $t$: $[t] = T$
- La constante de Planck reducida $planck.reduce$: $[planck.reduce] = [E] dot.op [T] = M L^2 T^(- 1)$

Entonces:

$
  [frac(H dot.op t, planck.reduce)] = frac(M L^2 T^(- 2) dot.op T, M L^2 T^(- 1)) = frac(M L^2 T^(- 1), M L^2 T^(- 1)) = 1
$

= Ejercicio 2
Argumenta por qué el siguiente hamiltoniano es válido para describir
muchos sistemas físicos: $H = H_11 ket(1)bra(1) + H_22 ket(2)bra(2) + H_12 (ket(1)bra(2) + ket(2)bra(1))$.

- La base $ket(1), ket(2)$ es ortonormal.

- $H_11$ y $H_22$ son términos diagonales que representan la energía del sistema si está en el estado $ket(1)$ o $ket(2)$.

- $H_12$ es el acoplamiento entre los 2 estados.
- $H_12 (|1 angle.r angle.l 2| + |2 angle.r angle.l 1|)$ es
  hermítico si $H_12 in bb(R)$.

= Ejercicio 3
Argumenta por qué el siguiente hamiltoniano NO es válido:

$ H = H_12 ket(1)bra(2) $

- El hamiltoniano debe ser hermítico para que las energías sean reales.

- Su adjunto es:

  $ H^dagger = H_12^* ket(2)bra(1) $
- Si $H_12 in bb(R)$, entonces $H^dagger eq.not H$, por lo tanto no es hermítico.

= Ejercicio 4
Si usamos la energía cinética clásica, demuestra que:

$ Delta E dot.op Delta t gt.eq planck.reduce / 2 , quad upright("donde") quad Delta t = frac(Delta x, v) $

+ Energía cinética clásica:

  $ E = frac(p^2, 2 m) arrow.r.double Delta E = p / m Delta p $

+ Reemplaza $Delta t = frac(Delta x, v) = frac(Delta x dot.op m, p)$

+ Multiplica ambos:

  $ Delta E dot.op Delta t = (p / m Delta p) dot.op (frac(m Delta x, p)) = Delta p dot.op Delta x $

+ Por el principio de incertidumbre:

  $ Delta x dot.op Delta p gt.eq planck.reduce / 2 arrow.r.double Delta E dot.op Delta t gt.eq planck.reduce / 2 $


#align(center)[*Tema 5: Imágenes de Schrödinger y Heisenberg*]
= Evolución temporal

- El operador de evolución temporal $U(t)$ es unitario.

- En la imagen de Schrödinger, los estados (kets) evolucionan
  con el tiempo, los operadores permanecen fijos.
- En la imagen de Heisenberg, los operadores evolucionan, los
  estados permanecen fijos.
- Ambas imágenes producen el mismo valor esperado de los observables.

= Ecuación del movimiento de Heisenberg

- Derivada del operador en la imagen de Heisenberg:

  $ frac(d A_H, d t) = frac(1, i planck.reduce) [A_H, H] $

- Si un operador conmuta con el hamiltoniano, es una constante del movimiento.

- Esta ecuación se asemeja a la formulación clásica con corchetes de
  Poisson.

= Partícula libre y teorema de Ehrenfest
- El hamiltoniano para partícula libre: $H = frac(p^2, 2 m)$.

- $p(t) = p(0)$: el momento es constante.

- $x(t) = x(0) + frac(p(0), m) t$: evolución lineal como
  en mecánica clásica.

- Relación de no conmutación entre $x(t)$ y $x(0)$: implica
  creciente incertidumbre con el tiempo.

- En presencia de un potencial $V(x)$, se recupera la segunda ley
  de Newton en forma cuántica:

  $ m frac(d^2 x, d t^2) = - nabla V(x) $

= Oscilador armónico

- Hamiltoniano:

  $ H = frac(p^2, 2 m) + 1 / 2 m omega^2 x^2 $

- Introducción de operadores de creación $a^dagger$ y
  destrucción $a$.

- Operador número: $N = a^dagger a$, relacionado con la energía:

  $ H = planck.reduce omega (N + 1 / 2) $

- La energía está cuantizada y el estado base tiene energía diferente de
  cero (energía del punto cero).

- Evolución temporal en la imagen de Heisenberg muestra comportamiento
  #strong[oscilatorio] de $x(t)$ y $p(t)$, análogo al caso
  clásico.

= Ejercicio 1
Utilizando el operador escalera de bajada (o de destrucción), hallar la función de onda del estado fundamental del oscilador armónico. Sabemos que el operador de destrucción es:
$ a = sqrt(frac(m omega, 2 planck.reduce)) (x + frac(i, m omega) p) $

En el espacio de posiciones, el operador momento se representa como:

$ p = - i planck.reduce frac(d, d x) $

Entonces:

$ a = sqrt(frac(m omega, 2 planck.reduce)) (x + frac(planck.reduce, m omega) frac(d, d x)) $

El estado fundamental $ket(0)$ debe anularse con el operador de
destrucción:

$ a psi_0 \( x \) = 0 $

Sustituimos:

$
  (x + frac(planck.reduce, m omega) frac(d, d x)) psi_0 \( x \) = 0 \ arrow.r.double frac(d psi_0, d x) = - frac(m omega, planck.reduce) x psi_0 \( x \)
$

Solucionamos esta ecuación diferencial:

$
  frac(d psi_0, psi_0) = - frac(m omega, planck.reduce) x d x arrow.r.double ln psi_0 = - frac(m omega, 2 planck.reduce) x^2 + C
$

$ psi_0 \( x \) = A e^(- frac(m omega, 2 planck.reduce) x^2) $

Resultado final:
$ psi_0 \( x \) = (frac(m omega, pi planck.reduce))^(1 \/ 4) e^(- frac(m omega, 2 planck.reduce) x^2) $

= Ejercicio 2
Aplicar el lema de Baker-Hausdorff para calcular:

$ e^(frac(i H t, planck.reduce)) x \( 0 \) e^(- frac(i H t, planck.reduce)) $

Sea $A = x \( 0 \)$ y $G = H$, el hamiltoniano del oscilador armónico:

$ H = frac(p^2, 2 m) + 1 / 2 m omega^2 x^2 $

La fórmula de Baker-Hausdorff:

$
  e^(i lambda G) A e^(- i lambda G) = A + \ i lambda \[ G \, A \] + frac((i lambda)^2, 2 !) [G, [G, A]] + dots.h
$

Calculamos conmutadores:

- $[H, x] = - frac(i planck.reduce, m) p$.

- $[H, [H, x]] = - frac(i planck.reduce, m) [H, p] = - frac(i planck.reduce, m) (i planck.reduce m omega^2 x) = planck.reduce^2 omega^2 x$

Sustituimos:

$ x(t) = x(0) cos omega t + frac(p(0), m omega) sin omega t $

Este resultado es exactamente el mismo que el obtenido mediante
resolución directa en la imagen de Heisenberg.

= Ejercicio 3
Demostrar que si un conjunto de funciones $psi_n$ satisface la ecuación de Schrödinger y es ortonormal en $t = 0$, entonces permanece ortonormal para todo $t$.

Supongamos que $psi_n (x, 0)$ y $psi_m(x, 0)$ son ortonormales:

$ integral psi_n^(*) (x, 0) psi_m(x, 0) thin d x = delta_(n m) $

La evolución temporal de cada función es:

$ psi_n(x, t) = e^(- frac(i E_n t, planck.reduce)) psi_n (x, 0) $

Calculamos el producto interno en $t$:

$
  integral psi_n^(*) (x, t) psi_m (x, t) thin d x = \ integral e^(frac(i E_n t, planck.reduce)) psi_n^(\*) ( x, 0) e^(- frac(i E_m t, planck.reduce)) psi_m (x, 0) thin d x = \ e^(frac(i (E_n - E_m) t, planck.reduce)) delta_(n m)
$

Pero si $n = m$, el factor de fase es 1 y si $n eq.not m$, el producto interno sigue siendo 0, lo que implica que la ortogonalidad se conserva:

$
  integral psi_n^(*)(x, t) psi_m(x, t) thin d x = delta_(n m)
$


= Ejercicio 4
Demostrar que el operador $Q = P sin omega t - m omega X cos omega t$ es constante en el tiempo en la imagen de Heisenberg. La derivada total en Heisenberg es:

$
  frac(d Q, d t) = frac(d P, d t) sin omega t + P omega cos omega t - \ m omega frac(d X, d t) cos omega t + m omega^2 X sin omega t
$

Sabemos que:

$ frac(d P, d t) = - m omega^2 X \, quad frac(d X, d t) = P / m $

Sustituimos:

$
  frac(d Q, d t) = \( - m omega^2 X \) sin omega t + P omega cos omega t - \ m omega (P / m) cos omega t + m omega^2 X sin omega t
$

Simplificamos:

$
  frac(d Q, d t) = - m omega^2 X sin omega t + P omega cos omega t - \ omega P cos omega t + m omega^2 X sin omega t = 0
$

Conclusión, es independiente del tiempo:

$ frac(d Q, d t) = 0 quad $

= Ejercicio 5
Demostrar el teorema de Ehrenfest:

$ m frac(d^2, d t^2) angle.l x angle.r = - expval(frac(d V, d x)) $

Usamos la ecuación de Heisenberg:

$ frac(d, d t) angle.l x angle.r = frac(1, i planck.reduce) angle.l \[ x \, H \] angle.r = frac(expval(p), m) $

Entonces:

$
  frac(d^2, d t^2) angle.l x angle.r = 1 / m frac(d, d t) angle.l p angle.r = 1 / m dot.op frac(1, i planck.reduce) expval([p, H])
$

Si el hamiltoniano es:

$ H = frac(p^2, 2 m) + V(x) arrow.r.double [p, H] = [p, V (x)] = \ - i planck.reduce frac(d V, d x) $

Entonces:

$
  frac(d^2, d t^2) angle.l x angle.r = - 1 / m ⟨frac(d V, d x)⟩ arrow.r.double \ m frac(d^2, d t^2) angle.l x angle.r = - expval(frac(d V, d x))
$

Esta es la forma cuántica de la segunda ley de Newton: el teorema de
Ehrenfest.


#align(center)[*Tema 6: Ecuación de Schrödinger*]

= Ecuación de Schrödinger dependiente del tiempo

A partir del operador de evolución temporal se deduce:

$
  i planck.reduce frac(partial, partial t) Psi \( x \, t \) = (- frac(planck.reduce^2, 2 m) nabla^2 + V \( x \)) Psi \( x \, t \)
$

Esta ecuación describe la evolución temporal de una función de onda en
la imagen de Schrödinger.

= Ecuación independiente del tiempo

Cuando se trata de estados estacionarios:

$
  Psi(x, t) = u_E(x) e^(- i E t / planck.reduce) arrow.r.double \ - frac(planck.reduce^2, 2 m) nabla^2 u_E(x) + V(x) u_E( x) = E u_E(x)
$

Con condiciones de frontera apropiadas, la energía se cuantiza.

= Interpretación de la función de onda
<interpretación-de-la-función-de-onda>
- La densidad de probabilidad es
  $rho \( x \, t \) = \| Psi \( x \, t \) \|^2$.

- Se deduce la ecuación de continuidad:

  $ frac(partial rho, partial t) + nabla dot.op j = 0 \, quad j = planck.reduce / m Im \( Psi^(\*) nabla Psi \) $

- Se interpreta el flujo como relacionado con el gradiente de la fase de
  la onda.

= Límite clásico

Al escribir la onda como:

$ Psi \( x \, t \) = sqrt(rho \( x \, t \)) e^(i S \( x \, t \) \/ planck.reduce) $

e introducirlo en la ecuación de Schrödinger, se obtiene que en el
límite $planck.reduce arrow.r 0$ aparece la ecuación de
Hamilton--Jacobi:

$ frac(1, 2 m) \| nabla S \|^2 + V \( x \) + frac(partial S, partial t) = 0 $

= Potenciales constantes

Agregar una constante $V_0$ al potencial cambia la fase global de la
función de onda:

$ Psi \( x \, t \) arrow.r e^(- i V_0 \( t - t_0 \) \/ planck.reduce) Psi \( x \, t \) $

pero no altera los observables físicos. Esto es un ejemplo de una
transformación gauge.

= La gravedad en Mecánica Cuántica

- La masa no desaparece de la ecuación de Schrödinger como lo hace en la
  clásica:

$ [- frac(planck.reduce^2, 2 m) nabla^2 + m Phi_g] Psi = i planck.reduce frac(partial Psi, partial t) $

- En escalas cuánticas, la gravedad es despreciable.

= Transformaciones gauge en electromagnetismo

- Bajo la transformación $A arrow.r A + nabla Lambda$, la función de
  onda se transforma:

  $ Psi \( x \, t \) arrow.r e^(i e Lambda \( x \) \/ c) Psi \( x \, t \) $

- El momento canónico $p$ cambia, pero el momento cinético
  $p - e A \/ c$ y los observables físicos no se alteran.

= Ejercicio 1
Demostrar que la función de onda:

$ Psi \( x \, t \) = A sin \( k x - omega t \) $

no es solución de la ecuación de Schrödinger dependiente del tiempo. La
ecuación de Schrödinger dependiente del tiempo (en 1D y sin potencial)
es:

$ i planck.reduce frac(partial Psi, partial t) = - frac(planck.reduce^2, 2 m) frac(partial^2 Psi, partial x^2) $

Calculamos ambas derivadas:

$
  frac(partial Psi, partial t) = - A omega cos \( k x - omega t \) arrow.r.double \ i planck.reduce frac(partial Psi, partial t) = - i planck.reduce A omega cos \( k x - omega t \)
$

$
  frac(partial^2 Psi, partial x^2) = - A k^2 sin(k x - omega t) arrow.r.double \ - frac(planck.reduce^2, 2 m) frac(partial^2 Psi, partial x^2) = frac(planck.reduce^2 k^2, 2 m) A sin(k x - omega t)
$

Las dos expresiones no son proporcionales y, por lo tanto, no son solución.

$ Psi(x, t) = A sin(k x - omega t) $

= Ejercicio 2
Demostrar que una solución general de la ecuación de Schrödinger
independiente del tiempo puede tomarse como una función real. La
ecuación es:

$ (- frac(planck.reduce^2, 2 m) nabla^2 + V(x)) psi(x) = E psi(x) $

Si $V(x)$ es real, y $psi(x)$ es solución, entonces su
conjugada $psi^(*)(x)$ también lo es:

$ (- frac(planck.reduce^2, 2 m) nabla^2 + V(x)) psi^(*) (x) = E psi^(*)(x) $

Entonces podemos construir una combinación lineal:

$ psi_r(x) = 1 / 2 (psi(x) + psi^(*)(x)) quad upright("(parte real)") $

$ psi_r(x) upright(" también satisface la ecuación.") $

Toda solución puede elegirse real, salvo por una fase global
irrelevante.

= Ejercicio 3
Una partícula unidimensional encerrada entre dos paredes (pozo
infinito):

$ 0 lt.eq x lt.eq L $

Determinar los valores permitidos de energía. La ecuación de Schrödinger
independiente del tiempo (sin potencial dentro del pozo) es:

$
  - frac(planck.reduce^2, 2 m) frac(d^2 psi, d x^2) = E psi arrow.r.double \ frac(d^2 psi, d x^2) + k^2 psi = 0, quad k^2 = frac(2 m E, planck.reduce^2)
$

Solución general:

$ psi(x) = A sin(k x) + B cos(k x) $

Condiciones de frontera:

- $psi (0) = 0 arrow.r.double B = 0$

- $psi (L) = 0 arrow.r.double sin(k L) = 0 arrow.r.double k L = n pi, quad n = 1, 2, 3, dots.h$

Entonces:

$
  k = frac(n pi, L) arrow.r.double E_n = frac(planck.reduce^2 k^2, 2 m) = frac(n^2 pi^2 planck.reduce^2, 2 m L^2) = frac(n^2 h^2, 8 m L^2)
$

$ E_n = frac(n^2 h^2, 8 m L^2), quad n = 1, 2, 3, dots $

= Ejercicio 4
Si $V(x)$ es una función par:

$V(- x) = V(x)$

demostrar que si $psi(x)$ es solución, entonces $psi(-x)$
también lo es. La ecuación es:

$- frac(planck.reduce^2, 2 m) frac(d^2 psi, d x^2) + V(x) psi(x) = E psi(x)$

Sustituimos $x arrow.r - x$:

$ - frac(planck.reduce^2, 2 m) frac(d^2 psi(-x), d x^2) + V(-x) psi(-x) = E psi(-x) $

Como $V(-x) = V(x)$, se cumple:

$ - frac(planck.reduce^2, 2 m) frac(d^2, d x^2) psi(-x) + V(x) psi(-x) = E psi(-x) $

$arrow.double psi(-x)$ también satisface la ecuación.

Por tanto, se puede construir soluciones pares e impares:

- $psi_(+) ( x) = 1 / 2 [psi(x) + psi(-x)]$ (par).
- $psi_(-) (x) = 1 / 2 [psi (x) - psi(-x)]$ (impar).

Ambas son también soluciones.
