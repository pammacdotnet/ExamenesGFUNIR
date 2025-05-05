
#import "@preview/physica:0.9.5": *
#set text(size: 20pt, lang: "es")
#set par(justify: true)
#set page(margin: 0.5cm, paper: "a4")
#set enum(numbering: "a)")

#let oo = $ket(vectorbold(0))$
#let uu = $ket(vectorbold(1))$
#let dd = $ket(vectorbold(2))$
#let tt = $ket(vectorbold(3))$

#let aa = $ket(vectorbold(a))$
#let bb = $ket(vectorbold(b))$
#let cc = $ket(vectorbold(c))$
#show: super-plus-as-dagger

#set heading(numbering: "1")
#show heading.where(level: 1): item => {
  context [
    #let nump = counter(heading).get().at(0)
    #let rem = calc.rem(nump, 3)
    #if (rem == 1) {
      if (nump > 1) {
        pagebreak()
        set page(background: none)
        pagebreak()
      }
    } else {
      pagebreak()
      pagebreak()
    }
    #let problem-number = rem
    #let puntos = "3️⃣"
    #if (rem == 0) {
      problem-number = 3
      puntos = "4️⃣"
    }
    Problema #problem-number #h(65%, weak: true) #puntos p. #linebreak()
  ]
  linebreak()
}

#let modelo = state("modelo", "Ejemplo")

#set page(
  background: context move(
    dx: 6pt,
    dy: 6pt,
  )[#align(top)[#rotate(
        14deg,
        par(text(160pt, fill: luma(90%), "Modelo\n " + modelo.get())),
      )]],
)

#let nuevo-modelo(modelo) = {
  state("modelo").update(modelo)
}


=
El hamiltoniano del oscilador armónico es:
$
  hat(H) = hat(p)^2 / (2m) + 1 / 2 m omega^2 hat(X)^2
$

+ Expresar $H$ en el espacio de momentos.
+ Demostrar que las funciones propias en espacio de momentos son análogas a las del espacio de posiciones.
+ Encontrar la función de onde del estado fundamental $phi.alt_0(p)$.


=
Considera una partícula en una red cuántica en dos dimensiones de $2 times 2$ posiciones. Sus estados se pueden representar por los $ket((i, j))$ con $i, j in {0,1}$. En este espacio, se define el operador de traslación generalizado $T_(mu,nu)$ con $mu, nu in {x, y}$ que desplaza la partícula y aplica una fase topológica matricial: $U_(mu, nu) in S U(2)$, dependiendo de la dirección de traslación. Por ejemplo: $T_x ket((i,j)) = U_x ket((i+1,j))$ y $T_y ket((i,j)) = U_y ket((i, j+1))$, donde $U_x = e^(i theta sigma_z)$, $U_y = e^(i phi.alt sigma_x)$, $sigma_(x,z)$ son matrices de Pauli y $theta, phi.alt in [0, 2 pi)$.
+ Demostrar que $T_x$ y $T_y$ son unitarios.

+ Calcular el conmutador $[T_x, T_y]$ y mostrar que depende de $[sigma_z, sigma_x]$.

=
Considerar un oscilador armónico isotrópico en dos dimensiones. El hamiltoniano viene dado por:
$
  hat(H)_0 = hat(p)_x^2 / (2m) + hat(p)_y^2 / (2m) + 1 / 2m omega^2 (hat(x)^2+ hat(y)^2)
$

+ ¿Cuáles son las energías de los tres estados más bajos? ¿Hay alguna degeneración?


+ Si se aplica la perturbación del tipo $V = delta m omega^2 x y$ (con $delta << 1$), resolver el problema de $H_0 + V$ exactamente y comparar con los resultados que se obtendrían aplicando teoría de perturbaciones. Utilizar:
$
  mel(n', x, n) = sqrt(hbar pi slash  m omega)(sqrt(n+1) delta_(n',n+1)+sqrt(n)delta_(n',n-1))
$
