#set text(font: "Comic Neue", size: 18pt, lang: "es")

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
  background: move(
    dx: 6pt,
    dy: 6pt,
  )[#align(top)[#rotate(
        14deg,
        par(
          text(160pt, fill: rgb("#0ef7ff32"))[
            *No uses Wuolah, leñe!*
          ],
        ),
      )]],
  margin: 40pt,
  paper: "a4",
)
#import "@preview/gentle-clues:1.2.0": *

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Estadística - Grado en Física (UNIR)]]

=
Considere que por cada ciudad donde se evalúa esta asignatura se distribuyen dos modelos de temarios como el que aquí se presenta. Se examinan 150 alumnos en su ciudad. En este escenario, ¿cuál es la probabilidad de que al elegir 2 exámenes aleatoriamente al menos 10 pares de exámenes coincidan?

=
Diseña dos conjuntos de datos que cumplan las siguientes condiciones:

#set enum(numbering: "Conjunto i de")

+ 10 pares $(x,y)$ donde $x$ es una variable nominal que identifica los individuos de un estudio e $y$ es una variable numérica discreta. <item:1>
+ 10 pares ($a$,$b$) que te permitan recoger información sobre un experimento que estudia registros de temperatura en un dispositivo a diferentes horas.

Calcula, si es posible, la media asociada a alguna variable de las descritas en ambos casos. Discute el alcance de estos resultados, i.e. puedes comentar qué sentido tiene esta media, y cómo podrías garantizar cuán representativa es utilizando elementos objetivos para exponer tus argumentos.


=
#set enum(numbering: "Evento i")
Diseña, si es posible, una función $F= F(x)$, para describir cada uno de los siguientes eventos presumiblemente aleatorios en la variable $x$. _Diseñar_ la función implica que escribas la forma matemática de la misma y el significado de las variables utilizadas en una interpretación que hagas del evento en cuestión:

+ Evolución de un cultivo de bacterias en una laboratorio
+ Densidad de probabilidad continua y constante para un rango de valores de $x$ entre -1 y 1.

Demuestra en cada caso que la consistencia de la función propuesta, i.e. que la función cumple con la definición técnica de la misma en el marco de la teoría de probabilidades. Elige (y/o reescribe si es necesario) una de las funciones anteriores y discute cómo podría afectar a la misma la pérdida de la aleatoriedad en el experimento elegido.

=
Una empresa de suministros de agua potable estudia el consumo en los hogares que han contratado el servicio. Para los hogares de Valencia se conoce que el consumo medio es de 1200 [arb. units]. La desviación estándar es 20 [arb. units]. En una muestra de 50 hogares, ¿cuál es la probabilidad de que la media del consumo medio esté entre 1000 y 1400 [arb. units]? Diseña un modelo de análisis estadístico que permita dar solución a este problema.
