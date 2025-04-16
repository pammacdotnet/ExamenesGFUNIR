
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit, add-unit, add-prefix
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/exmllent:0.1.0": worksheets-parser, worksheet-parser

#let wuolah = ""
#if json("wuolah.json").wuolah == 1 {
  wuolah = [*No uses Wuolah, leñe!*]
}

#set heading(numbering: "1.")
#show heading.where(level: 1): item => {
  v(30pt)
  "Problema "
  context counter(heading).display()
  " "
  item.body
  v(-2.5mm)
}


#set page(
  background: rotate(
    24deg,
    par(
      text(180pt, fill: rgb("#00c8b428"))[
        #wuolah
      ],
    ),
  ),
  margin: 40pt,
  paper: "a4",
)

#set text(font: "Comic Neue", size: 18pt, lang: "es")

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Relatividad - Grado en Física (UNIR)]]

=
Un observador en un sistema de referencia inercial $S$ observa 3 sucesos $s_1=(3,2,0,2)$, $s_2=(4,-1, 0, A)$ y $s_3=(-2, B, 0, -2)$, tomando $c=1$. ¿Para qué valores de $B$ están los sucesos $s_1$ y $s_3$ conectados casualmente? ¿Para qué valor de $A$ existe un sistema de referencia $s'$? en el que los sucesos $s_1$ y $s_2$ son simultáneos y se encuentran separados a una distancia de $8 thin c$.

=
Formula las ecuaciones de campo de la Relatividad General. Explica el significado geométrico y físico y las características principales del tensor de curvatura y el tensor energía-momento.

=
Una partícula de masa $m$ se mueve a lo largo del eje $z$ siguiendo la trayectoria $z(t) = g t^2 slash 2$, siendo $g$ una constante, entre los tiempos $t_1 = -T$ y $t_2 = T$, y se mueve a velocidad constante en cualquier otro instante temporal. Calcula las perturbaciones de la métrica característica de estas ondas gravitatorias a grandes distancias $L$ a lo largo del eje $z$, para $z>0$.

=
A partir de la métrica de Schwarschild, encuentra la velocidad coordenada de la luz, como una función del radio $r$:
- en la dirección radial (es decir, la velocidad $d r slash d t$, con $d omega = d theta = 0$);
- en la dirección transversal (es decir, la velocidad $d omega slash d t$, con $d r = d phi = 0$).
Explica las consecuencias físicas de estos resultados.

=
¿Cómo podemos caracterizar el contenido de materia-energía del universo? Describe los universos dominados por materia, por radiación y por energía oscura, y cómo evoluciona la expansión del universo en cada caso.
