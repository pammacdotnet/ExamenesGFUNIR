// Aquí cambio el tamaño de la letra, usando la que Typst trae por defecto. Lo hago tanto para el texto normal como para el texto matemático.
#show math.equation: set text(size: 22pt)
#set text(size: 22pt, lang: "es")

// Aquí importo un paquete que permite crear cantidades físicas. Define la función qty, que apenas uso una vez, pero para que veas lo guay que está.
//#import "@preview/metro:0.3.0": *
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit


// Aquí configuro los títulos de los ejercicios para dejar un espacio antes y después. También hago la gracia de poner automáticamente "Ej. " + el número que toca, de manera automática y elegante.
#set heading(numbering: "1.")
#show heading.where(level: 1): item => {
  v(30pt)
  "Ej. "
  context counter(heading).display()
  " "
  item.body
  v(-2.5mm)
}

// Aquí pongo el título a pelo.
#align(center)[#text(size: 40pt, weight: "extrabold")[Examen de Cálculo]]

= Números (2 pt)
+ Demuestra por inducción que, para cualquier número natural $n$, la expresión $4n - 1$ es divisible por 3.
+ Escribe el término general de las siguientes sucesiones:
  + $5; 5.5; 6; 6.5; 7; dots$
  + $-1; -4; -16; -64; dots$
  + $1, 1 / 2; 1 / 3; 1 / 4; 1 / 5; dots$

= Trigonometría (2 pt)
Resuelve las siguientes cuestiones:
+ Sea: $
alpha in (pi, (3pi)/2) $ tal que $tg(alpha) = 1/5 $. Calcula: $
sin(pi/2+alpha)dot tg(pi+alpha)-sin^2(pi-alpha)  $ dando el resultado en forma racionalizada.

+ Una escalera de #qty(5,  "meter") está apoyada en una pared formando un ángulo de #qty(46,  "degree"). Calcula la distancia entre la base de la escalera y la pared. ¿Qué ángulo forma la escalera con el suelo?

= Complejos (1.5 pt)
Calcula los números complejos $z$ tales que $ w = (z-1-i)/(z+1+i)  $
+ Es un número real.
+ Tiene módulo 1.

= Funciones (2.5 pt)
Sea $f : RR --> RR$ la función definida por:
$
  f(x) = x^2exp(-x^2)
$
+ Determina el dominio y asíntotas de $f(x)$.
+ Determina los intervalos de crecimiento y decrecimiento de la función e indica los extremos relativos (qué tipo son, dónde se obtienen y qué valor toman).
+ Estudia la concavidad y convexidad.
+ Esboza la gráfica de la función.

= Límites y derivadas (2 pt)
Resuelve las siguientes cuestiones:
+ Calcula el siguiente límite si es posible: $ lim_(x-->infinity) ((x+3)/(x-1))^(x+3) $
+ Calcula $a$ y $b$ para que tenga valor finito el límite y obtén el valor en:

$ lim_(x-->0) (ln(cos(x))+a x-b x²) / (x^4) $



