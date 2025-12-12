
#import "@preview/physica:0.9.7": expval
#set page("a4", margin: 4mm)
#set text(size: 20pt)

#let formulas = (
  $F(nu) = 1 / (sqrt(2 pi)) integral_(-infinity)^infinity f(x) e^(i nu x) thin d x$,
  $E = h nu$,
  $T = h nu - W$,
  $nu_0 = W slash h$,
  $arrow(E)(x, t) = E_0 sin(k x - omega t) thin hat(j) = \ = E_0 sin[k (x - v t)] hat(j)$,
  $arrow(B)(x, t) = B_0 sin(k x - omega t) thin hat(k) = \ = B_0 sin[k(x - v t)] hat(k)$,
  $n = 1 + (N q_e^2) slash (2 epsilon_0 m (omega_0^2 - omega^2))$,
  $arrow(S) = 1 / mu_0 (arrow(E) times arrow(B))$,
  $expval(u) = (1 slash 2) thin epsilon_0 E_0^2$,
  $expval(arrow(p)) = (1 slash 2c) epsilon_0 E_0^2 hat(z)$,
  $tan 2 psi = (tan 2 alpha) cos delta$,
  $sin 2 chi = (sin 2 alpha) sin delta$,
  $tan chi = minus.plus b slash a$,
  $E_(0R) = (frac(1 - beta, 1 + beta)) E_(0I)$,
  $E_(0T) = (frac(2, 1 + beta)) E_(0I)$,
  $beta = frac(mu_1 v_1, mu_2 v_2) = frac(mu_1 n_2, mu_2 n_1)$,
  $T = I_T / I_I = frac(epsilon_2 v_2, epsilon_1 v_1) (E_(0 T) / E_(0 I))^2$,
  $R = I_R / I_I = (E_(0 R) / E_(0 I))^2$,
  $n = 1 + (N q_e^2)/(2 epsilon_0 m (omega_0^2 - omega^2))$,
  $B_(12) slash B_(21) = 1$,
  $A_(21) slash B_(21) = (8 pi h nu^3) slash (c^3)$,
  $n_1 slash n_2 = e^((E_2-E_1) slash k T) = e^(h nu slash k T)$,
  $v_n^2 = (D_x^2 v_x^2 + D^2_y v_y^2 + D_z^2 v_z^2) slash D^2$,
  $delta = (2 pi) / lambda (x d) / D$,
  $I prop 2A^2 (1+ cos delta) = 4A^2 cos^2 (delta slash 2)$,
  $Delta lambda = h / (m_e c) (1- cos theta)$,
  $k = omega sqrt(c mu/ 2) sqrt(sqrt(1+(sigma/(epsilon omega))^2)+1)$,
  $kappa = omega sqrt(c mu/ 2) sqrt(sqrt(1+(sigma/(epsilon omega))^2)-1)$,
  $delta = 1 slash kappa$,
  $phi.alt_2 - phi.alt_1 = (2 pi d sin theta) slash lambda$,
  $x_K = K lambda D slash d$,
  $x_(K-1) - x_K = lambda D slash d$,
)

#title[Formulario Óptica Física UnirFísica]
#grid(
  columns: 2,
  align: center,
  stroke: .1pt,
  inset: (x: .25em, y: 0.78em),
  fill: none,
  // ..shuffle(rng, formulas).at(1),
  ..formulas
)

