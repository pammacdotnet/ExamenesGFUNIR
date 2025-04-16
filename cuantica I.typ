
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit, add-unit, add-prefix
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/exmllent:0.1.0": worksheets-parser, worksheet-parser
#import "@preview/physica:0.9.5": *

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

#show math.equation: it => {
  show ";": $thin #text(font: "Comic Neue")[,]$
  it
}

#show math.equation: it => {
  show regex("\d"): num => {
    text(font: "Comic Neue")[#num]
  }
  it
}

#show math.equation: it => {
  show ",": text(font: "Comic Neue", ",")
  it
}



#text(weight: "extrabold", size: 30pt)[#align(center)[Cuántica I - Grado en Física (UNIR)]]

=
Considerar un oscilador harmónico descrito por el potencial $V(x) = m omega^2x^2 slash 2$ cuyo hamiltoniano es:
$
  hat(H) = hat(p)^2 / (2m) + V(x)
$
siendo sus dos autofunciones normalizadas $phi_0(x)$ y $phi_1(x)$.
Considerando un sistema que a $t=0$ tiene la función de onda $psi(x,0) = cos(theta) phi_0(x) + sin(theta) phi_1(x)$ con $0 <= theta <= pi $.
- ¿Cuál es la función de onda en un tiempo $t$?
- Calcula los valores esperados $expval(E) expval(E^2)$ y $Delta E^2 = expval(E^2)-expval(E)^2$ y explicar su dependencia temporal.
- Calcular la evolución temporal $expval(x) expval(x^2)$ y $Delta x$.

=
#import "@preview/wrap-it:0.1.1": wrap-content


// #align(center)[#image("potencial.excalidraw.svg", width: 40%)]
#let body = [
  Una partícula de masa $m$ está confinada en una región unidimensional $0 <= x <= a$, como muestra en la figura.


  A $t = 0$, su función de onda normalizada es:
  $
    psi(x,t = 0) = sqrt(8/(5a)) [1+ cos(pi x / a)] sin (pi x / a)
  $

  - ¿Cuál es la función de onda en un tiempo sucesivo $t = t_0$?
  - ¿Cuál es la energía media del sistema a $t=0$ y a $t=t_0$?
  - ¿Cuál es la probabilidad de que la partícula se encuentre en la mitad izquierda de la caja a $t=t_0$? Es decir, en la región $0 <= x <= a slash 2$.
]

// Imagen original disponible y editable en https://math.preview.excalidraw.com/#json=8K_mpB_3PIIbX2k_a1z9_,HJo5ZTi3hs-CeeCxgFKZow
#wrap-content(image("potencial.excalidraw.svg", width: 63%), body, align: right + top)

=
Evalúa el producto de incertidumbres $expval((Delta x)^2) thin expval((Delta p)^2)$ para una partícula monodimensional confinada entre dos paredes rígidas:
$
  V= cases(0 #text(font: "Comic Neue")[para] 0<x<a, infinity #text(font: "Comic Neue")[para el resto])
$
