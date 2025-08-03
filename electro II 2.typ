= Ejercicio 1
Indica si es verdadero o falso las siguientes afirmaciones.
#strong[(2 pts)]

- La intensidad instantánea, en un circuito en serie de corriente
  alterna y para un momento determinado cualquiera, tiene el mismo valor
  en todos los puntos del circuito. \
  #strong[Verdadero, porque $I = I_0 med sin \( omega med t \)$, luego
    en un instante de tiempo dado, la intensidad de corriente es la misma
    en todos los puntos del circuito en serie] \

- La impedancia, $Z$, de un circuito de corriente alterna relaciona los
  valores instantáneos de la f.e.m y de la intensidad. \
  #strong[Falso, porque
    $Z = sqrt(R^2 + (L med omega + frac(1, C med omega))^2)$, es decir, en
    el circuito de corriente alterna, hay un inductor y/o un condensador o
    los dos, y eso provoca un desfase entre la tensión y la corriente.] \

- La suma algebraica de las f.e.m para las distintas partes de un
  circuito en serie corriente alterna, da la f.e.m total del circuito. \
  #strong[Falso, porque L y C producen un desfase entre la intensidad de
    corriente $I$ y la f.e.m $epsilon$, que al ser funciones sinusoidales,
    la suma algebraica de sus valores no coincide con el valor total.] \

- Un circuito de corriente alterna que tenga como único elemento un
  condensador no consume potencia al paso de la corriente. \
  #strong[Verdadero, porque el condensador solo hace que almacenar
    energía no consumirla, luego no consume potencia.] \

- La intensidad eficaz máxima de una corriente alterna se obtiene en el
  caso de que la reactancia sea nula. \
  #strong[Verdadero, porque
    $I_0 = epsilon_0 / Z = epsilon_0 / sqrt(R^2 + chi^2)$, donde $chi$ es
    $chi = L med omega - frac(1, C med omega)$. Por tanto, cuando la
    reactancia es cero, entonces la impedancia $Z = R$ y por tanto:
    $I_0 = epsilon_0 / R = I_(m a x)$]

= Ejercicio 2
Se tienen dos campos vectoriales en el vacío expresados en
coordenadas cartesianas por:
$ arrow(A)_1 = \( 2 x y + z \) arrow(a)_x + \( x^2 - 2 y \) arrow(a)_y + x arrow(a)_z $
$ arrow(A)_2 = \( 1 + 2 x \) arrow(a)_x - y^2 z arrow(a)_y + \( z^2 y - 2 z + 1 \) arrow(a)_z $
uno de ellos es un campo electrostático $arrow(E)$ y el otro es
magnetostático $arrow(H)$. #strong[(2 pts)]

- Teniendo en cuenta las expresiones de las ecuaciones de Maxwell para
  campos estáticos, identificar cada uno de los campos anteriores,
  sabiendo que uno de ellos es un campo eléctrico y el otro un campo
  magnético. \
  #strong[Para saber quien es el campo eléctrico y el campo magnético,
    es necesario comprobar que cumplen las ecuaciones de Maxwell, es
    decir, para cada vector campo habrá que calcular tanto la divergencia
    como el rotacional.] \
  #strong[De esa forma habrá que ver que
    $nabla dot.op arrow(E) = rho / epsilon_0$ y
    $nabla times arrow(E) = 0$, mientras que $nabla dot.op arrow(B) = 0$ y
    $nabla times arrow(B) = mu_0 med arrow(J)$] \
  #strong[Con ayuda del formulario para el calculo de la divergencia y
    el rotacional en cartesianas, tenemos para el vector campo
    $arrow(A)_1$ que: $nabla dot.op arrow(A)_1 = 2 y - 2$ y
    $nabla times arrow(A)_1 = 0$ y para el vector campo $arrow(A)_2$:
    $nabla dot.op arrow(A)_2 = 0$ y $nabla times arrow(A)_2 = z^2 + y^2$.
    En conclusión el vector campo $arrow(A)_1$ es el campo eléctrico y
    $arrow(A)_2$ es el campo magnético.] \
  #strong[A priori, no sería necesario hacer la comprobación del vector
    campo $arrow(A)_2$, por lo que indica el enunciado, pero siempre es
    mejor comprobarlo.] \

- Determinar el potencial eléctrico escalar del que deriva el campo
  eléctrico. \
  #strong[Para hallar el potencial eléctrico generado por el vector
    campo eléctrico $arrow(A)_1$, resolvemos la integral]

  $
    V = - integral arrow(A)_1 dot.op d arrow(r) = - integral \( \( 2 x y + z \) arrow(a)_x + \( x^2 - 2 y \) arrow(a)_y + x arrow(a)_z \) dot.op \( d x arrow(i) + d y arrow(j) + d z arrow(k) \)
  $

  #strong[Por tanto, el potencial eléctrico es:]

  $ V = - x^2 y + y^2 - x z + C $

= Ejercicio 3
Una onda electromagnética plana y uniforme tiene el campo eléctrico
orientado en el eje $x$ e incide perpendicularmente en el sentido
vertical hacia abajo (eje $z$) sobre la superficie del mar que tiene los
siguientes parámetros $sigma = 4 med upright(\( Omega m \)^(- 1))$,
$epsilon = 81 epsilon_0$, $mu = mu_0$. La expresión instantánea del
campo eléctrico en $z = 0$ (debajo justo de la superficie del agua) es:
$ arrow(E)_x \( z \, t \) = 100 e^(- alpha z) cos \( 2 pi 3000 t - beta z \) arrow(a)_x med upright(V \/ m) $
donde $alpha$ y $beta$ son, respectivamente, las constantes de
atenuación y fase del agua de mar. Calcular:

- Los valores de las constantes $alpha$ y $beta$. \
  #strong[Lo primero de todo es calcular el parámetro siguiente:]
  $ frac(sigma^2, omega^2 med epsilon^2) $

  #strong[y ver si es mucho mayor que 1 o igual que 1 o menor que 1. En
    función de ese parámetr oy haciendo uso de las expresiones del
    formulario, determinar el tipo de material y ver si es posible
    realizar las aproximaciones adecuadas. En concreto para los datos que
    aquí figuran si es posible y por tanto:]
  $ beta = alpha = sqrt(frac(omega med mu med sigma, 2)) $

- La longitud de onda, la velocidad de fase y la impedancia intrínseca
  en el agua del mar. \
  #strong[A partir de la expresión anterior, se sustituye en para
    encontrar la longitud de onda $lambda = frac(2 med pi, beta)$, la
    velocidad de fase $v_f = omega / beta$ y la impedancia que en este
    caso hay que trabajarla como un número complejo, luego
    $eta = sqrt(mu / epsilon frac(1, 1 + j frac(sigma, omega med epsilon)))$]
  \

- La expresión instantánea del campo magnético. \
  #strong[Una vez tenemos la impedancia solo resta calcular la expresión
    del campo magnético:
    $arrow(H) = frac(arrow(E) times arrow(n), eta) = frac(E_0, \| eta \|)$]

= Ejercicio 4
En la figura se tiene una esfera conductora de radio $a$ que lleva
una carga $q$ y que está situada en un medio de permitividad $epsilon_0$
en el que existe un campo vertical uniforme $E_0$. Calcular el potencial
eléctrico en un punto $P \( r \, theta \, phi.alt \)$. #strong[(2 pts)]
\

#figure(image("electro II 2 ejercicio 4.drawio.svg", width: 50.0%))

#strong[Aplicaremos el principio de superposición, por lo que se calcula
  primero el potencial electrostático como si fuera una carga puntual y
  luego se calcula el potencial electrostático como si fuera una esfera
  conductora sin carga y con potencial cero en la superficie.] \
#strong[En el caso de una carga puntual es bien conocido que:]
$ V \( r \, theta \) = frac(q, 4 med pi med epsilon_0 med r) $

#strong[En el caso de una esfera conductora, se aplicará el método de
  separación de variables:]
$
  V \( r \, theta \, phi.alt \) = sum_n^(+ oo) \[ A_n r^n + B_n r^(- \( n + 1 \)) \] med P_n^m \( mu \) med \[ A_m med cos \( m med phi.alt \) + B_m med sin \( m med phi.alt \) \]
$

#strong[debido a la simetría del sistema, el potencial no dependerá de
  $phi.alt$, luego:]
$ V \( r \, theta \, phi.alt \) = sum_n^(+ oo) \[ A_n r^n + B_n r^(- \( n + 1 \)) \] med P_n^m \( mu \) $

#strong[Como la esfera está en un campo uniforme, el potencial generado
  por el campo será]
$ V = - integral E_0 med d z = - E_0 med z = - E_0 med r med cos \( theta \) med med med med med \( 1 \) $

#strong[así, para $n = 1$:]

$
  \( A_1 r^1 + B_1 r^(- 2) \) med P_1 \( cos \( theta \) \) = \( A_1 r^1 + B_1 r^(- 2) \) med cos \( theta \) med med med med med \( 2 \)
$

#strong[Si comparamos las expresiones (1) y (2), obtenemos que:]
$ A_1 = - E_0 ; med med med A_n = 0 med upright("si") med \( n gt.eq 2 \) $

#strong[y podemos escribir el potencial electrostático de la forma:]

$
  V \( r \, theta \) = - E_0 med r med cos \( theta \) + sum_n^(+ oo) med B_n med r^(- \( n + 1 \)) med P_n \( cos \( theta \) \)
$

#strong[para $r = a$, estamos en la superficie de la esfera y por tanto
  $V = 0$, luego para $n = 1$:]

$ V \( a \, theta \) = - E_0 med a med cos \( theta \) + B_1 med a^(- 2) med cos \( theta \) = 0 $

#strong[mientras que para $\( n gt.eq 2 \) med B_n = 0$, luego
  despejando de la anterior expresión,]

$ E_0 med a med cos \( theta \) = B_1 med a^(- 2) med cos \( theta \) med arrow.r B_1 = E_0 med a^3 $

#strong[Con todo ello, la expresión del potencial electrostático que
  buscamos será:]

$
  V \( r \, theta \) = frac(q, 4 med pi med epsilon_0 med r) - E_0 med r med cos \( theta \) + frac(E_0 med a^3, r^2) med cos \( theta \)
$

= Ejercicio 5
En el circuito de la figura, determinar el equivalente de Thévenin
entre los terminales $A$ y $B$. #strong[(2 pts)]

#figure(image("electro II 2 ejercicio 5.drawio.svg", width: 65.0%))

#strong[Para la resolución de este circuito, en primer lugar debemos
  sustituir el generador de corriente $10 med upright(A)$ en paralelo con
  la resistencia $1 med upright(Omega)$, por un generador de tensión de
  $10 med upright(V)$ en serie con la resistencia $1 med upright(Omega)$.]
\
#strong[Ahora tendremos un circuito con dos mallas, la primera es donde
  esta el generador de tensión de $60 med upright(V)$, donde por
  aplicación de la ley de las mallas tendremos:]
$ 60 - 4 I_1 - 2 I_2 = 0 $

#strong[En la segunda malla, donde se ha supuesto que la corriente $I_2$
  circula en el sentido horario, tendremos por aplicación de la ley de las
  mallas:] $ 10 - 2 I_1 - 5 I_2 = 0 $

#strong[Al resolver este sistema de dos ecuaciones con dos incognitas,
  encotramos que $I_2 = 5 med upright(A)$, luego la tensión de Thèvenin en
  los terminales A y B será:] $ E_(T h) = 2 dot.op 5 = 10 med upright(V) $

#strong[Para encontrar la resistencia de Thèvenin, quitamos todos los
  generadores y vemos que la conexión de resistencias es un mixto, es
  decir, las dos primeras resistencias, de izquierda a derecha, están en
  paralelo entre sí y dicho conjunto en serie con la resistencia de
  $1 med upright(Omega)$. Finalmente este conjunto está en paralelo con la
  última resistencia de $2 med upright(Omega)$, por tanto:]

$ R_(T h) = 1 med upright(Omega) $

= Formulario matemático
<formulario-matemático>
== Soluciones polinomios de Legendre
<soluciones-polinomios-de-legendre>
$ Theta \( theta \) = P_l \( cos \( theta \) \) $ La función
$P_l \( x \)$ es más conveniente definir la por la fórmula de Rodrigues:
$ P_l \( x \) equiv frac(1, 2^l l !) (frac(d, d x))^l \( x^2 - 1 \)^l $
Por tanto los primeros polinomios de Legendre:

#figure(
  align(center)[#table(
      columns: 2,
      align: (center, left),
      table.header([Orden], [Polinomio]),
      table.hline(),
      [$l = 0$], [$P_0 \( x \) = 1$],
      [$l = 1$], [$P_1 \( x \) = x$],
      [$l = 2$], [$P_2 \( x \) = frac(\( 3 x^2 - 1 \), 2)$],
      [$l = 3$], [$P_3 \( x \) = frac(\( 5 x^3 - 3 x \), 2)$],
    )],
  kind: table,
)

== Expresiones parámetros característicos onda electromagnéticas
<expresiones-parámetros-característicos-onda-electromagnéticas>
$ k = omega sqrt(frac(mu epsilon, 2)) [plus.minus sqrt(1 + frac(sigma^2, omega^2 epsilon^2)) + 1]^(1 \/ 2) $

$ k' = omega sqrt(frac(mu epsilon, 2)) [plus.minus sqrt(1 + frac(sigma^2, omega^2 epsilon^2)) - 1]^(1 \/ 2) $

$ Z_c = sqrt(mu / epsilon (frac(1, 1 + j frac(sigma, omega epsilon)))) $

$ lambda = frac(2 med pi, k) $

$ v_f = omega / k $

$ delta = 1 / k' $

== Diferenciales
<diferenciales>
- #strong[Cartesianas]
  $
    d arrow(r) = d x med hat(x) + d y med hat(y) + d z med hat(z) + \, quad d arrow(S) = d y d z med hat(x) + d x d z med hat(y) + d x d y med hat(z) \, quad d V = d x d y d z
  $

- #strong[Cilíndricas]
  $
    d arrow(rho) = d rho med hat(rho) + rho d phi med accent(v a r p h i, ̂) + d z med hat(z) \, quad d arrow(S) = rho d phi d z med hat(rho) + d rho d z med hat(phi) + rho d rho d phi med hat(z) \, quad d V = rho d rho d phi d z
  $

- #strong[Esféricas]
  $
    d arrow(r) = d r med hat(r) + r d theta med hat(theta) + r sin \( theta \) d phi med hat(phi) \, quad d arrow(S) = r^2 sin \( t h e t a \) d theta d phi med hat(r) + r med sin \( theta \) d r d phi med hat(theta) + r d r d theta hat(phi)
  $
  $ quad d V = r^2 med sin \( theta \) d r d theta d phi $

== Cálculo vectorial
<cálculo-vectorial>
- #strong[Gradiente]
  $
    nabla f = frac(partial f, partial x) med hat(i) + frac(partial f, partial y) med hat(j) + frac(partial f, partial z) med hat(z) #h(2em) upright("cartesianas")
  $
  $
    nabla phi.alt = frac(partial phi.alt, partial rho) med hat(rho) + 1 / rho frac(partial phi.alt, partial phi) med hat(phi) + frac(partial phi.alt, partial z) med hat(z) #h(2em) upright("cilindricas")
  $
  $
    nabla phi.alt = frac(partial phi.alt, partial r) med hat(r) + 1 / r frac(partial phi.alt, partial theta) med hat(theta) + frac(1, r med sin \( theta \)) frac(partial phi.alt, partial phi) med hat(phi) #h(2em) upright("esfericas")
  $

- #strong[Divergencia]
  $
    nabla dot.op arrow(F) = frac(partial F_x, partial x) + frac(partial F_y, partial y) + frac(partial F_z, partial z) #h(2em) upright("cartesianas")
  $
  $
    nabla dot.op arrow(F) = 1 / rho frac(partial rho F_rho, partial rho) + 1 / rho frac(partial F_phi, partial phi) + frac(partial F_z, partial z) #h(2em) upright("cilindricas")
  $
  $
    nabla dot.op arrow(F) = 1 / r^2 frac(partial r^2 F_r, partial r) + frac(1, r med sin \( theta \)) frac(partial sin \( theta \) F_theta, partial theta) + frac(1, r med sin \( theta \)) frac(partial F_phi, partial phi) #h(2em) upright("efericas")
  $

- #strong[Rotacional]
  $
    nabla times arrow(F) = (frac(partial F_z, partial y) - frac(partial F_y, partial z)) med hat(i) + (frac(partial F_x, partial z) - frac(partial F_z, partial x)) med hat(j) + (frac(partial F_y, partial x) - frac(partial F_x, partial y)) med hat(z) quad upright("cartesianas")
  $
  $
    nabla times arrow(F) = (1 / rho frac(partial F_z, partial phi) - frac(partial F_phi, partial z)) med hat(rho) + (frac(partial F_rho, partial z) - frac(partial F_z, partial rho)) med hat(phi) + (1 / rho frac(partial rho F_phi, partial rho) - 1 / rho frac(partial F_rho, partial phi)) med hat(z) quad upright("cilindricas")
  $
  $
    nabla times arrow(F) & = frac(1, r^2 med sin \( theta \)) \[(frac(partial r med sin \( theta \) F_phi, partial theta) - frac(partial r med F_phi, partial phi)) med hat(r) + (- frac(partial r med sin \( theta \) med F_phi, partial r) + frac(partial F_r, partial phi)) med r hat(theta) +\
    & + (frac(partial r med F_theta, partial r) - frac(partial F_r, partial phi)) med r med sin \( theta \) hat(phi)\] quad upright("esfericas")
  $
