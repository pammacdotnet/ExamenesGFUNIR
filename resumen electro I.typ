#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit


#align(center)[*Tema 1: Campo Eléctrico*]

= Fundamentos de electroestática
- #strong[Ley de Coulomb];: fuerza conservativa, central y de tipo
  newtoniano.
- #strong[Principio de superposición];: la fuerza total es la suma
  vectorial de las fuerzas individuales.

= La carga eléctrica
- Las cargas se adquieren por fenómenos como el rozamiento.
- Tipos de carga: positiva y negativa.
- Cuantificación: $q = N e$, donde
  $e = #qty("1.602e-19", "coulomb")$.
- Conservación: la carga neta en un sistema aislado permanece
  constante.

= Ley de Coulomb
$ arrow(F) = frac(1, 4 pi epsilon.alt_0) frac(q_1 q_2, r^2) hat(r) $
- La fuerza entre dos cargas es proporcional al producto de sus cargas e
  inversamente proporcional al cuadrado de la distancia entre ellas.
- Dirección: línea que une ambas cargas.
- Obedece la tercera ley de Newton.

= Distribuciones de carga continua
- Lineal: $lambda(r)$, unidades #unit("coulomb per meter").
- Superficial: $sigma(r)$, unidades #unit("coulomb per meter squared").
- Volumétrica: $rho(r)$, unidades #unit("coulomb per meter cubed").
- Se emplean integrales para calcular la fuerza resultante.

= Campo eléctrico
$ arrow(E) = lim_(q arrow.r 0) arrow(F) / q $
$ arrow(E) (arrow(r)) = sum_i frac(1, 4 pi epsilon.alt_0) q_i / r_i^2 hat(r)_i $

= Líneas de campo eléctrico
- Representan visualmente la dirección y magnitud del campo.
- Salen de cargas positivas y entran en negativas.
- No se cruzan.
- Su densidad representa la intensidad del campo.

= Movimiento de partículas cargadas
- Una partícula en un campo eléctrico experimenta:
  $ arrow(a) = frac(q arrow(E), m) $
- Si $arrow(E)$ es constante, la aceleración también lo será.
