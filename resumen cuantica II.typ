#import "@preview/physica:0.9.5": *
#show: super-plus-as-dagger

#import "@preview/unify:0.7.1": num, numrange, qty, qtyrange, unit

// Meta data
#set document(title: "Resumen de Física Cuántica II (Unir Física)", author: "Alberto Corbi")

#let headcolor = rgb("004225")

// Margin and footer
#set page(margin: 0.3in, paper: "a4", footer: context {
  if counter(page).display() == "2" {
    grid(
      columns: (1fr, 1fr),
      [],
      block(inset: 4pt, stroke: (top: headcolor), text(headcolor)[UNIR Física #h(1fr) #datetime.today().display()]),
    )
  } else {
    []
  }
})

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

#align(center, link("https://bit.ly/unirfiscuantica2")[
  #text(large, headcolor)[#context document.title]
])

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
- Operador unitario: cumple $U^+U=I$.

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
$ ket(mu) = 2 i ket(beta_1) + (1 - 3 i ) ket(beta_2) $
Se toma el complejo conjugado de los coeficientes y
se cambia la notación de ket a bra:

$
  bra(mu) = (2i)^*bra(beta_1) + (1-3i)^*bra(beta_2) = \
  -2i bra(beta_1) + (1+3i)bra(beta_2)
$

- Calcular el producto interno $braket(mu, mu)$, suponiendo que $ket(beta_1)$ y $ket(beta_2)$ son ortonormales.


$
  braket(mu, mu) = abs(2i)^2 + abs(1-3i)^2 = \
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

- El _operador de traslación_ infinitesimal $cal(F)(d x)$ traslada un estado de posición: $cal(F)(d x) ket(x) = ket(x + d x)$.

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

  $ i planck.reduce frac(partial, partial t) | psi(t) angle.r = H ket(psi(t)) $

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

- El espín precesa en el plano $x y$ con frecuencia angular $omega$, y se demuestra: $expval(S_x) = planck.reduce / 2 cos(omega t), quad expval(S_y) = planck.reduce / 2 sin(omega t), quad expval(S_z) = 0$.

= Incertidumbre energía-tiempo
- Aunque el tiempo no tiene operador, existe una relación significativa: $Delta E dot.op Delta t gt.tilde hbar$

- Se introduce la amplitud de correlación $C(t) = braket(alpha(0), alpha(t))$, que mide cuánto ha cambiado el estado en el tiempo.

- Si $C(t)$ se aleja significativamente de 1, implica un cambio apreciable del estado, con una escala de tiempo dada por la dispersión energética.

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

$ a psi_0(x) = 0 $

Sustituimos:

$
  (x + frac(planck.reduce, m omega) frac(d, d x)) psi_0(x) = 0 \ arrow.r.double frac(d psi_0, d x) = - frac(m omega, planck.reduce) x psi_0(x)
$

Solucionamos esta ecuación diferencial:

$
  frac(d psi_0, psi_0) = - frac(m omega, planck.reduce) x d x arrow.r.double ln psi_0 = - frac(m omega, 2 planck.reduce) x^2 + C
$

$ psi_0(x) = A e^(- frac(m omega, 2 planck.reduce) x^2) $

Resultado final:
$ psi_0 (x) = (frac(m omega, pi planck.reduce))^(1 / 4) e^(- frac(m omega, 2 planck.reduce) x^2) $

= Ejercicio 2
Aplicar el lema de Baker-Hausdorff para calcular:

$ e^(frac(i H t, planck.reduce)) x(0) e^(- frac(i H t, planck.reduce)) $

Sea $A = x(0)$ y $G = H$, el hamiltoniano del oscilador armónico:

$ H = frac(p^2, 2 m) + 1 / 2 m omega^2 x^2 $

La fórmula de Baker-Hausdorff:

$
  e^(i lambda G) A e^(- i lambda G) = A + \ i lambda [G, A] + frac((i lambda)^2, 2 !) [G, [G, A]] + dots.h
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
  integral psi_n^(*) (x, t) psi_m (x, t) thin d x = \ integral e^(frac(i E_n t, planck.reduce)) psi_n^(*) ( x, 0) e^(- frac(i E_m t, planck.reduce)) psi_m (x, 0) thin d x = \ e^(frac(i (E_n - E_m) t, planck.reduce)) delta_(n m)
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

$ frac(d P, d t) = - m omega^2 X, quad frac(d X, d t) = P / m $

Sustituimos:

$
  frac(d Q, d t) = (- m omega^2 X) sin omega t + P omega cos omega t - \ m omega (P / m) cos omega t + m omega^2 X sin omega t
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

$ frac(d, d t) angle.l x angle.r = frac(1, i planck.reduce) angle.l [x, H] angle.r = frac(expval(p), m) $

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
  i planck.reduce frac(partial, partial t) Psi(x, t) = (- frac(planck.reduce^2, 2 m) nabla^2 + V(x)) Psi(x, t)
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
- La densidad de probabilidad es
  $rho(x, t) = | Psi(x, t)|^2$.

- Se deduce la ecuación de continuidad:

  $ frac(partial rho, partial t) + nabla dot.op j = 0, quad j = planck.reduce / m Im(Psi^(*) nabla Psi) $

- Se interpreta el flujo como relacionado con el gradiente de la fase de
  la onda.

= Límite clásico

Al escribir la onda como:

$ Psi(x, t) = sqrt(rho(x, t)) e^(i S(x, t) / planck.reduce) $

e introducirlo en la ecuación de Schrödinger, se obtiene que en el
límite $planck.reduce arrow.r 0$ aparece la ecuación de
Hamilton--Jacobi:

$ frac(1, 2 m) | nabla S |^2 + V (x) + frac(partial S, partial t) = 0 $

= Potenciales constantes

Agregar una constante $V_0$ al potencial cambia la fase global de la
función de onda:

$ Psi(x, t) arrow.r e^(- i V_0 (t - t_0) / planck.reduce) Psi (x, t) $

pero no altera los observables físicos. Esto es un ejemplo de una
transformación gauge.

= La gravedad en Mecánica cuántica

- La masa no desaparece de la ecuación de Schrödinger como lo hace en la
  clásica:

$ [- frac(planck.reduce^2, 2 m) nabla^2 + m Phi_g] Psi = i planck.reduce frac(partial Psi, partial t) $

- En escalas cuánticas, la gravedad es despreciable.

= Transformaciones gauge en electromagnetismo

- Bajo la transformación $A arrow.r A + nabla Lambda$, la función de
  onda se transforma:

  $ Psi (x, t ) arrow.r e^(i e Lambda(x) / c) Psi(x, t) $

- El momento canónico $p$ cambia, pero el momento cinético
  $p - e A / c$ y los observables físicos no se alteran.

= Ejercicio 1
Demostrar que la función de onda:

$ Psi(x, t) = A sin(k x - omega t) $

no es solución de la ecuación de Schrödinger dependiente del tiempo. La ecuación de Schrödinger dependiente del tiempo (en 1D y sin potencial)
es:

$ i planck.reduce frac(partial Psi, partial t) = - frac(planck.reduce^2, 2 m) frac(partial^2 Psi, partial x^2) $

Calculamos ambas derivadas:

$
  frac(partial Psi, partial t) = - A omega cos(k x - omega t) arrow.r.double \ i planck.reduce frac(partial Psi, partial t) = - i planck.reduce A omega cos(k x - omega t)
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

Determinar valores permitidos de energía. La ecuación de Schrödinger
independiente del tiempo (sin potencial en el pozo) es:

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
Si $V(x)$ es una función par: $V(- x) = V(x)$, demostrar que si $psi(x)$ es solución, entonces $psi(-x)$
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




#align(center)[*Tema 7: Momento angular*]

= Rotaciones y conmutación
- Rotaciones respecto a ejes distintos no conmutan.

- Esta propiedad se traslada a los operadores cuánticos de rotación, que generan relaciones de conmutación del momento angular: $[J_i, J_j] = i hbar epsilon.alt_(i j k) J_k$.

= Rotaciones infinitesimales
- Se define un operador unitario asociado a rotaciones: $D(R) = 1 - i G d phi.alt$

- El momento angular es generador hermítico de estas rotaciones: $G = J_k / hbar$

- Las rotaciones forman un grupo no abeliano, a diferencia de las
  traslaciones.

= Rotaciones del espín 1/2
- Operadores de espín en base de $S_z$: $S_z = hbar / 2(ket(+) bra(+) - ket(-) bra(-))$.

- Al rotar un espín $1 slash 2$, sus valores esperados giran como vectores clásicos.

- Una rotación de $2 pi$ cambia el signo del ket: $ket(alpha)_(R(2 pi)) = - ket(alpha)$

= Precesión del Espín

En un campo magnético, el espín precesa según:

$ ket(S_x)_t = expval(S_x)_0 cos(omega t) - expval(S_y)_0 sin(omega t) $

$ expval(S_z)_t = expval(S_z)_0 $

= Formalismo de Pauli

- Se utilizan matrices $2 times 2$ para describir espinores:

  $
    sigma_1 = mat(delim: "(", 0, 1; 1, 0), quad sigma_2 = mat(delim: "(", 0, - i; i, 0), quad sigma_3 = mat(delim: "(", 1, 0; 0, - 1)
  $


- Hermiticidad: $sigma_j^dagger = sigma_j$

- Conmutación: $[sigma_i, sigma_j] = 2 i epsilon.alt_(i j k) sigma_k$
- Anticonmutación: ${sigma_i, sigma_j} = 2 delta_(i j)$

= Ejercicio 1
Comprobar que ${sigma_i, sigma_j} = 2 delta_(i j)^(**)$. Este es el anticonmutador de las matrices de Pauli. Se define: ${ sigma_i, sigma_j } = sigma_i sigma_j + sigma_j sigma_i$. Casos:

- $i = j$: ${ sigma_i, sigma_i } = sigma_i^2 + sigma_i^2 = 2 sigma_i^2 = 2 I$.

- $i eq.not j$, se sabe que las matrices de Pauli anticommutan:
$ sigma_i sigma_j + sigma_j sigma_i = 0 $
$ {sigma_i, sigma_j} = 2 delta_(i j) I $

= Ejercicio 2
Comprobar que las matrices de Pauli son hermíticas. Una matriz es
hermítica si $sigma^+ = sigma$ (conjugada transpuesta = original).
Veamos cada una:

- $sigma_1 = mat(delim: "(", 0, 1; 1, 0) arrow.r.double sigma_1^+ = sigma_1$.

- $sigma_2 = mat(delim: "(", 0, - i; i, 0) arrow.r.double sigma_2^dagger = mat(delim: "(", 0, i; - i, 0) = sigma_2$.
- $sigma_3 = mat(delim: "(", 1, 0; 0, - 1) arrow.r.double sigma_3^+ = sigma_3$

Todas las matrices de Pauli son hermíticas.

= Ejercicio 3
Determinante y traza de las matrices de Pauli:

- $det(sigma_1) = det(sigma_2) = det(sigma_3) = - 1$

- $upright("Tr")(sigma_1) = upright("Tr")(sigma_2) = upright("Tr")(sigma_3) = 0$

= Ejercicio 4
Demostrar que:
$(sigma dot.op a)(sigma dot.op b) = a dot.op b + i sigma dot.op(a times b)$, con:

- $sigma dot.op a = sum_k a_k sigma_k$

- $sigma_i sigma_j = delta_(i j) I + i epsilon.alt_(i j k) sigma_k$

Entonces:

$
  (sigma dot.op a)(sigma dot.op b) = sum_(i, j) a_i b_j sigma_i sigma_j = \ sum_(i, j) a_i b_j(delta_(i j) I + i epsilon.alt_(i j k) sigma_k)
$

Agrupando:

$ = sum_i a_i b_i I + i sum_(i, j, k) a_i b_j epsilon.alt_(i j k) sigma_k $

$ = (a dot.op b) I + i sigma dot.op(a times b) $

= Ejercicio 5
Si $a$ tiene componentes reales, demostrar que: $(sigma dot.op a)^2 = | a |^2 I$:

$ (sigma dot.op a)^2 = (sum_i a_i sigma_i)^2 $

Usamos:

$ sigma_i sigma_j = delta_(i j) I + i epsilon.alt_(i j k) sigma_k $

$
  arrow.r.double(sigma dot.op a)^2 = sum_(i, j) a_i a_j(delta_(i j) I + i epsilon.alt_(i j k) sigma_k) = \ sum_i a_i^2 I + upright("(términos con ") epsilon.alt_(i j k))
$

Pero $a_i a_j epsilon.alt_(i j k) = 0$ si $a_i, a_j$ son reales
(producto simétrico con antisimétrico). Entonces:
$( sigma dot.op a)^2 = ( a_1^2 + a_2^2 + a_3^2) I = | a |^2 I$.




#align(center)[*Tema 8: Perturbaciones dependientes del tiempo*]


= Sistemas de dos niveles

- Se estudia un sistema con dos estados $psi_a$ y $psi_b$, con energías
  $E_a$ y $E_b$.

- Un estado general es una combinación:

  $ Psi(t) = c_a(t) psi_a e^(- i E_a t / planck.reduce) + c_b(t) psi_b e^(- i E_b t / planck.reduce) $

- Al aplicar el hamiltoniano perturbado $H'(t)$, se obtienen
  ecuaciones para los coeficientes temporales:

  $ dot(c)_a = - i / planck.reduce(H'_(a a) c_a + H'_(a b) e^(- i omega_0 t) c_b) $

  $ dot(c)_b = - i / planck.reduce(H'_(b b) c_b + H'_(b a) e^(i omega_0 t) c_a) $

  Donde $omega_0 = frac(E_b - E_a, planck.reduce)$.

= Perturbación dependiente del tiempo

Si la perturbación es pequeña, se resuelven las ecuaciones anteriores por aproximaciones sucesivas:

- Orden 0: $c_a^(( 0)) = 1, c_b^((0)) = 0$

- Orden 1:

  $ c_b^((1))(t) = - i / planck.reduce integral_0^t H'_(b a)(t') e^(i omega_0 t') d t' $

- Orden 2 y superiores se obtienen introduciendo las soluciones previas
  en las ecuaciones.

= Perturbaciones senoidales

- Se considera una perturbación senoidal:

  $ H'(r, t) = V(r) cos(omega t) $

  $ H'_(a b) (t) = V_(a b) cos(omega t) $

- A primer orden:

  $
    c_b(t) = - frac(i V_(b a), 2 planck.reduce) (frac(e^(i( omega_0 + omega) t) - 1, omega_0 + omega) + frac(e^(i( omega_0 - omega) t) - 1, omega_0 - omega))
  $

- Si $omega approx omega_0$, el segundo término domina y se obtiene:

  $
    P_(a arrow.r b)(t) = lr(|c_b(t)|)^2 approx frac(|V_(a b)|^2, planck.reduce^2) frac(sin^2 [(omega_0 - omega) t / 2], (omega_0 - omega)^2)
  $

Esto describe resonancia: la probabilidad de transición es máxima cuando
la frecuencia de la perturbación coincide con la frecuencia de
transición del sistema

= Ejercicio 1
Una onda electromagnética tiene campo eléctrico:
$ arrow(E)(t) = E_0 cos (omega t) thin hat(z) $

+ Hallar el hamiltoniano de un átomo en este campo.

+ Expresarlo en términos del momento dipolar eléctrico.
+ Demostrar que el elemento de matriz diagonal del $H$
  perturbado es cero.

Cuando un átomo está en un campo eléctrico externo, su interacción se
describe por:

$ H'(t) = - arrow(p) dot.op arrow(E)(t) $

Donde $arrow(p)$ es el momento dipolar eléctrico del átomo. Como el campo es $arrow(E)(t) = E_0 cos(omega t) thin hat(z)$,
tenemos:

$ H'(t) = - p_z E_0 cos(omega t) $

En términos de $arrow(p)$, el hamiltoniano queda:
$ H'(t) = - E_0 cos(omega t) thin arrow(p) dot.op hat(z) $

O simplemente:

$ H'(t) = - E_0 cos(omega t) thin p_z $

Elemento de matriz diagonal $angle.l psi_a |H'| psi_a angle.r$. Sea
$H'_(a a)(t) = mel(psi_a, H'(t), psi_a)$.
Sustituyendo:
$ H'_(a a)(t) = - E_0 cos(omega t) mel(psi_a, p_z, psi_a) $

Si $psi_a$ es un estado con paridad definida y $p_z$ es un operador
impar (porque es una coordenada), entonces:

$ angle.l psi_a | p_z | psi_a angle.r = 0 $

$ H'_(a a) (t) = 0 $

= Ejercicio 2
Con el hamiltoniano del ejercicio 1, demostrar que la probabilidad de transición es:
$
  P_(a arrow.r b)(t) = (frac(|p| E_0, planck.reduce))^2 frac(sin^2 [(omega_0 - omega) t / 2], (omega_0 - omega)^2)
$

A primer orden, si:

$ H'(t) = - p_z E_0 cos(omega t) arrow.r.double H'_(b a)(t) = \ - p_(b a) E_0 cos(omega t) $

Entonces:
$ c_b(t) = - i / planck.reduce integral_0^t H'_(b a)(t') e^(i omega_0 t') d t' $

Sustituyendo:

$ c_b(t) = frac(i p_(b a) E_0, planck.reduce) integral_0^t cos(omega t') e^(i omega_0 t') d t' $

Descomponemos el coseno:

$ cos(omega t') = 1 / 2( e^(i omega t') + e^(- i omega t')) $

$
  arrow.r.double c_b(t) = frac(i p_(b a) E_0, 2 planck.reduce) integral_0^t(e^(i( omega_0 + omega) t') + e^(i( omega_0 - omega) t')) d t'
$

$
  = frac(i p_(b a) E_0, 2 planck.reduce) (frac(e^(i( omega_0 + omega) t) - 1, i( omega_0 + omega)) + frac(e^(i( omega_0 - omega) t) - 1, i( omega_0 - omega)))
$

Despreciando el primer término:

$
  c_b(t) approx frac(p_(b a) E_0, 2 planck.reduce) dot.op frac(e^(i( omega_0 - omega) t) - 1, omega_0 - omega)
$

$
  arrow.r.double |c_b (t)|^2 = (frac(| p_(b a) | E_0, 2 planck.reduce))^2 frac(4 sin^2 [( omega_0 - omega) t / 2], (omega_0 - omega)^2)
$

$
  P_(a arrow.r b)(t) = (frac(| p_(b a) | E_0, planck.reduce))^2 frac(sin^2 [( omega_0 - omega) t / 2], ( omega_0 - omega)^2)
$

= Ejercicio 3
Regla de oro de Fermi:
$ R = frac(2 pi, planck.reduce) | H'_(s n) |^2 rho ( E_n) $

Se parte del resultado general de probabilidad de transición
$P_(a arrow.r b) (t)$, cuando el sistema tiene muchos estados
finales $ket(n)$ y una perturbación estacionaria. Si la
perturbación es pequeña y constante durante un tiempo $t$, la
probabilidad de transición es:

$
  P_(s n) (t) = frac(| H'_(s n) |^2, planck.reduce^2) frac(sin^2 [( E_n - E_s ) t / (2 planck.reduce)], [( E_n - E_s) / 2 planck.reduce]^2)
$

A largo plazo, esta función se vuelve una $delta$:

$ lim_(t arrow.r oo) frac(sin^2(x t), x^2) prop t dot.op delta(x) $

Entonces, la tasa de transición es:

$ R = frac(d P, d t) = frac(2 pi, planck.reduce) |H'_(s n)|^2 rho (E_n) $

Donde:

- $H'_(s n) = mel(n, H', s)$ es el elemento de matriz de
  la perturbación.

- $rho(E_n)$ es la densidad de estados finales a la energía $E_n$.


#align(center)[*Tema 9: Dispersión*]


= Teoría clásica de la dispersión
- Se considera un proyectil que incide sobre un blanco con simetría
  axial.
- Se define la sección eficaz diferencial
  $D (theta) = frac(d sigma, d Omega)$, que mide la probabilidad de
  dispersión en un ángulo sólido.
- La sección eficaz total se obtiene integrando sobre todos los ángulos
  sólidos.
- Se introduce el concepto de luminosidad para conectar con datos
  experimentales.

= Teoría cuántica de la dispersión
- Se modela el haz incidente como una onda plana que, al interactuar con un potencial, da lugar a una onda esférica dispersada.

- La función de onda asintótica es:

  $ psi(r, theta) approx A e^(i k z) + f( theta) e^(i k r) / r $

- La sección eficaz diferencial es proporcional al módulo cuadrado de la amplitud de dispersión: $D(theta) = abs(f(theta))^2$

= Análisis de ondas parciales
- Se resuelve la ecuación de Schrödinger usando separación de variables y coordenadas esféricas.

- La función de onda se expresa como suma de modos angulares (ondas
  parciales) con coeficientes $a_l$.

- Para grandes distancias, se obtiene una forma explícita de la onda dispersada y de $f (theta)$.

- Se introduce el desfasaje $delta_l$ que relaciona los $a_l$ mediante:

  $ a_l = 1 / k e^(i delta_l) sin delta_l $

- La sección eficaz total se obtiene como:
  $ sigma = frac(4 pi, k^2) sum_l( 2 l + 1) sin^2 delta_l $

= Aproximación de Born
<aproximación-de-born>
- Se linealiza la ecuación de Schrödinger mediante la función de Green.

- Se obtiene una solución integral formal de la función de onda.

- En la primera aproximación de Born, se sustituye la función de onda
  por la onda incidente:

  $
    f(theta) approx - frac(m, 2 pi planck.reduce^2) integral e^(i( arrow(k') - arrow(k)) dot.op arrow(r)) V( arrow(r)) d^3 r
  $

- Para potenciales esféricos, se simplifica aún más.

= Ejercicio 1
Dispersión cuántica por una esfera de potencial infinito. Se da el
siguiente potencial:
$ V(r) = cases(delim: "{", oo quad r lt.eq a, 0 quad r > a) $

Usar la condición $k a lt.double 1$, es decir, longitudes de onda grandes comparadas con el tamaño de la esfera. Calcular la sección
eficaz total $sigma$. Este potencial representa una esfera impenetrable,
por lo que las partículas _rebotan_ al llegar a $r = a$. A bajas energías, solo contribuye el modo s ($l = 0$) del análisis de ondas
parciales.

- El desfasaje $delta_0$ para $l = 0$ cuando $k a lt.double 1$ es conocido:

  $ delta_0 approx - k a $

- La sección eficaz total es:

  $ sigma = frac(4 pi, k^2) sum_(l = 0)^oo (2 l + 1) sin^2(delta_l) $

Como solo $l = 0$ contribuye:

$ sigma approx frac(4 pi, k^2) sin^2(delta_0) approx frac(4 pi, k^2)(k^2 a^2) = 4 pi a^2 $

= Ejercicio 2
Amplitud de dispersión para el potencial de Yukawa. Se da:
$ V(r) = frac(beta e^(- mu r), r) $

Calcular la amplitud de dispersión $f(theta)$ en la aproximación de
Born. Recordemos la fórmula de la 1ª aproximación de Born:
$ f(theta) = - frac(2 m, planck.reduce^2) frac(1, q^2 + mu^2) quad upright("donde ") q = 2 k sin (theta / 2) $

El resultado de la integral de Fourier para un potencial de Yukawa da
directamente este resultado.

$ f(theta) = - frac(2 m beta, planck.reduce^2(mu^2 + kappa^2)), quad kappa = 2 k sin (theta / 2) $

= Ejercicio 3
Dispersión de Rutherford. Usamos el resultado anterior y tomamos:

- $beta = frac(q_1 q_2, 4 pi epsilon.alt_0)$
- $mu = 0$ (potencial de Coulomb)

Calcular la sección eficaz diferencial $frac(d sigma, d Omega)$. Se
tiene:

$ f(theta) = - frac(2 m, planck.reduce^2) dot.op frac(q_1 q_2, 4 pi epsilon.alt_0 kappa^2) $

Entonces:

$
  frac(d sigma, d Omega) = abs(f (theta))^2 = (frac(2 m, planck.reduce^2) dot.op frac(q_1 q_2, 4 pi epsilon.alt_0 kappa^2))^2
$

Recordando que $kappa = 2 k sin (theta / 2)$, y que $E = frac(planck.reduce^2 k^2, 2 m)$, se puede reescribir en términos de $E$:

$ frac(d sigma, d Omega) = (frac(q_1 q_2, 16 pi E sin^2(theta/2)))^2 $
