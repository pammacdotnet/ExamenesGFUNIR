
= Potencial electrostático - separación de variables
$
  V(r, theta, phi.alt) = sum_v^(+ oo)[ A_n r^n + B_n r^(-(n + 1))] med P_n^m(mu)(A_m cos(m med phi.alt) + B_m med sin(m med phi.alt))
$

= Soluciones polinomios de Legendre
$ Theta(theta) = P_l( cos(theta)) $

La función $P_l( x)$ es más conveniente definir la por la fórmula de
Rodrigues:

$ P_l( x) equiv frac(1, 2^l l !) (frac(d, d x))^l( x^2 - 1)^l $

Por tanto los primeros polinomios de Legendre:

#figure(
  align(center)[#table(
      columns: (50%, 50%),
      align: (center, left),
      table.header(table.cell(align: center)[Orden], table.cell(align: left)[Polinomio]),
      table.hline(),
      table.cell(align: center)[$l = 0$], table.cell(align: left)[$P_0(x) = 1$],
      table.cell(align: center)[$l = 1$], table.cell(align: left)[$P_1(x) = x$],
      table.cell(align: center)[$l = 2$], table.cell(align: left)[$P_2(x) = frac(( 3 x^2 - 1), 2)$],
      table.cell(align: center)[$l = 3$], table.cell(align: left)[$P_3(x) = frac(( 5 x^3 - 3 x), 2)$],
    )],
  kind: table,
)

= Expresiones parámetros característicos ondas electromagnéticas
$ k = omega sqrt(frac(mu epsilon, 2)) [plus.minus sqrt(1 + frac(sigma^2, omega^2 epsilon^2)) + 1]^(1 / 2) $

$ k' = omega sqrt(frac(mu epsilon, 2)) [plus.minus sqrt(1 + frac(sigma^2, omega^2 epsilon^2)) - 1]^(1 / 2) $

$ Z_c = sqrt(mu / epsilon (frac(1, 1 + j frac(sigma, omega epsilon)))) $

$ lambda = frac(2 med pi, k) $

$ v_f = omega / k $

$ delta = 1 / k' $

= Diferenciales
- Cartesianas

$
  d arrow(r) = d x med hat(x) + d y med hat(y) + d z med hat(z) +, quad d arrow(S) = d y d z med hat(x) + d x d z med hat(y) + d x d y med hat(z), quad d V = d x d y d z
$

- Cilí­ndricas

$
  d arrow(rho) = d rho med hat(rho) + rho d phi med accent(v a r p h i, ̂) + d z med hat(z), quad d arrow(S) = rho d phi d z med hat(rho) + d rho d z med hat(phi) + rho d rho d phi med hat(z), quad d V = rho d rho d phi d z
$

- Esféricas

$
  d arrow(r) = d r med hat(r) + r d theta med hat(theta) + r sin(theta) d phi med hat(phi), quad d arrow(S) = r^2 sin(theta) d theta d phi med hat(r) + r med sin(theta) d r d phi med hat(theta) + r d r d theta hat(phi)
$

$ quad d V = r^2 med sin(theta) d r d theta d phi $

= Cálculo vectorial
- Gradiente

$
  nabla f = frac(partial f, partial x) med hat(i) + frac(partial f, partial y) med hat(j) + frac(partial f, partial z) med hat(z) quad quad upright("cartesianas")
$

$
  nabla phi.alt = frac(partial phi.alt, partial rho) med hat(rho) + 1 / rho frac(partial phi.alt, partial phi) med hat(phi) + frac(partial phi.alt, partial z) med hat(z) quad quad upright("cilíndricas")
$

$
  nabla phi.alt = frac(partial phi.alt, partial r) med hat(r) + 1 / r frac(partial phi.alt, partial theta) med hat(theta) + frac(1, r med sin(theta)) frac(partial phi.alt, partial phi) med hat(phi) quad quad upright("esféricas")
$

- Divergencia

$
  nabla dot.op arrow(F) = frac(partial F_x, partial x) + frac(partial F_y, partial y) + frac(partial F_z, partial z) quad quad upright("cartesianas")
$

$
  nabla dot.op arrow(F) = 1 / rho frac(partial rho F_rho, partial rho) + 1 / rho frac(partial F_phi, partial phi) + frac(partial F_z, partial z) quad quad upright("cilíndricas")
$

$
  nabla dot.op arrow(F) = 1 / r^2 frac(partial r^2 F_r, partial r) + frac(1, r med sin(theta)) frac(partial sin(theta) F_theta, partial theta) + frac(1, r med sin(theta)) frac(partial F_phi, partial phi) quad quad upright("esféricas")
$

- Rotacional

$
  nabla times arrow(F) = (frac(partial F_z, partial y) - frac(partial F_y, partial z)) med hat(i) + (frac(partial F_x, partial z) - frac(partial F_z, partial x)) med hat(j) + (frac(partial F_y, partial x) - frac(partial F_x, partial y)) med hat(z) quad upright("cartesianas")
$

$
  nabla times arrow(F) = (1 / rho frac(partial F_z, partial phi) - frac(partial F_phi, partial z)) med hat(rho) + (frac(partial F_rho, partial z) - frac(partial F_z, partial rho)) med hat(phi) + (1 / rho frac(partial rho F_phi, partial rho) - 1 / rho frac(partial F_rho, partial phi)) med hat(z) quad upright("cilíndricas")
$

$
  nabla times arrow(F) & = frac(1, r^2 med sin (theta)) [(frac(partial r med sin(theta) F_phi, partial theta) - frac(partial r med F_phi, partial phi)) med hat(r) + (- frac(partial r med sin(theta) med F_phi, partial r) + frac(partial F_r, partial phi)) med r hat(theta) + med\
    & med + (frac(partial r med F_theta, partial r) - frac(partial F_r, partial phi)) med r med sin(theta) hat(phi)] quad upright("esféricas")
$
