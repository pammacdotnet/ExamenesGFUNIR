#show math.equation: set text(size: 22pt)
#set text(size: 22pt, lang: "es")

// Aquí importo un paquete que permite crear cantidades físicas. Define la función qty, que apenas uso una vez, pero para que veas lo guay que está.
//#import "@preview/metro:0.3.0": *
#import "@preview/unify:0.7.1": num, numrange, qty, qtyrange, unit


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

#align(center)[#text(size: 40pt, weight: "extrabold")[Cálculo PER Ruby]]

+ Calcular el siguiente límite:
  $ lim_(x arrow.r - oo) frac(e^x, x + 1) . $

+ Estudie la continuidad de la función
  $
    f(x) = cases(delim: "{", 3 x^2 - 2^x thin \, & x < 0 thin \,, x^2 - x - 1 thin \, & 0 lt.eq x < 1 thin \,, 1 + ln x thin \, & x gt.eq 1 thin .)
  $

+ Sea
  $f(x, y, z) = frac(x^3 - 2 x + x^2 - 2, sqrt(ln(x^2 - 1)))$.
  - Calcular el dominio de la función.
  - Decir si la función es continua. En caso
    negativo, decir para cuáles valores no lo es.
  - Estudiar los extremos de la función.
  - Dibujar la función.

+ Calcule el valor de $z$:
  $ z = frac(14 - 5 i, 2 + 3 i) thin . $

+ Calcule el valor de $x$:
  $ cos x - 1 / 2 (sin x / 2)^2 = (cos x / 2)^2 thin . $

+ Escribir el desarrollo en serie de Taylor
  alrededor del punto $x = 0$ la función
  $ f(x) = sin(ln(x - 1)), $ hasta orden $5$.

+ Estudiar el comportamiento al infinito de la siguiente serie:
  $ sum_(n = 1)^oo frac(2^(n - 1) dot.op 3^(n + 2), n !) thin . $

+ Calcular el siguiente límite:
  $ lim_(x arrow.r - oo) frac(e^x, x + 1) . $

+ Estudie la continuidad de la función:
  $
    f(x) = cases(delim: "{", 3 x^2 - 2^x thin \, & x < 0 thin \,, x^2 - x - 1 thin \, & 0 lt.eq x < 1 thin \,, 1 + ln x thin \, & x gt.eq 1 thin .)
  $

+ Sea
  $f(x, y, z) = frac(x^3 - 2 x + x^2 - 2, sqrt(ln(x^2 - 1)))$.
  - Calcular el dominio de la función.
  - Decir si la función es continua. En caso
    negativo, decir para cuáles valores no lo es.
  - Estudiar los extremos de la función.
  - Dibujar la función.

+ Calcule el valor de $z$:
  $ z = frac(14 - 5 i, 2 + 3 i) thin . $

+ Calcule el valor de $x$:
  $ cos x - 1 / 2 (sin x / 2)^2 = (cos x / 2)^2 thin . $

+ Escribir el desarrollo en serie de Taylor alrededor del punto $x = 0$ la función
  $ f(x) = sin(ln(x - 1)), $ hasta orden $5$.

+ Estudiar el comportamiento al infinito de la siguiente serie:
  $ sum_(n = 1)^oo frac(2^(n - 1) dot.op 3^(n + 2), n !) thin . $
