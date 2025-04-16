#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit, add-unit, add-prefix
#import "@preview/gentle-clues:1.2.0": *

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

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Óptica geométrica y radiación - Grado en Física (UNIR)]]

=
La lente de un cierto proyector está hecha de un video de 1.42 de índice de refracción y tiene una distancia focal de 25 cm. Calcula:

+ La velocidad de la luz dentro de la lente.
+ Determina los radios de curvatura de las dos superficies de la lente.
+ ¿A qué distancia del foco objeto de la lente hay que situar una transparencia para proyectar su imagen, enfocada, sobre una pantalla situada a 3 m de la lente?

=
Un sistema óptico está formado por dos lentes gruesas: una convergente ($R_1 = #qty(20, "cm"), #qty(-60, "cm")$) de grosor #qty(4, "mm") y de distancia focal #qty(30.1, "cm"), seguida de otra divergente ($R_1 = #qty(-100, "cm")$, $R_2 = #qty(40, "cm")$) de #qty(5, "mm") de grosor y distancia focal #qty(-57, "cm") separadas ambas una distancia de #qty(13, "cm"). Ambas lentes tienen $n = 1.5$, Determinar:
+ Matriz de transferencia del sistema óptico compuesto.
+ Potencia equivalente y distancias focales del sistema.

=
Se coloca una pantalla a una distancia de #qty(1.5, "cm") de una doble rendija y paralelamente a las mismas. Las rendijas están separadas unos #qty(0.05, "mm") y el haz luminoso incide perpendicularmente sobre ellas. Se observan interferencias, siendo #qty(4.6, "cm") la distancia entre la segunda franja brillante y la franja central.

+ ¿Cuál es la longitud de onda de la luz que se está utilizando en el experimento?
+ ¿Cuál es la distancia entre la 3ª y la 4ª franja brillante?

=
Al calentar un cuerpo negro, la longitud de onda correspondiente a la densidad espectral máxima de la emisión de radiación varió entre #qty(0.69, "micro meter") y #qty(0.5, "micro meter"). ¿Cuántas veces mayor se hizo el flujo total de energía radiante del cuerpo negro?

=
Calcula la longitud de onda (#unit("nm")) y la energía (#unit("eV")) de la primera línea de series de Lyman, Balmer y Paschen del hidrógeno.

#add-prefix("post", "forthed", "upright(\"pre\")")
#add-unit("unit", "pot", "upright(W thin K^(-4) thin m^(-2))")
#tip(title: "Datos")[
  $
    c = #qty("3e8", "meter per second") \
  R = #qty("1.097e7", "per meter") \
  sigma = #qty("5.67e-8", "pot")
  $
  Recuerda que la constante de desplazamiento de Wien es igual a #qty("2.898e-3", "meter per kelvin")
]
