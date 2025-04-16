
#import "@preview/typsium:0.2.0": ce
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
#import "@preview/gentle-clues:1.2.0": *

#set text(font: "Comic Neue", size: 18pt, lang: "es")

#let wuolah = ""
#if json("wuolah.json").wuolah == 1 {
  wuolah = [*No uses Wuolah, leñe!*]
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

#set heading(numbering: "1.")
#show heading.where(level: 1): item => {
  v(30pt)
  "Problema "
  context counter(heading).display()
  " "
  item.body
  v(-2.5mm)
}

#set enum(numbering: "1.A)")
#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Física I - Grado en Física (UNIR)]]


= Elije la opción correcta
+ En función del tipo de elemento matemático que se utiliza para describirla, ¿qué tipos de magnitudes físicas existen?
  + Intensivas y extensivas.
  + Cualitativas y cuantitativas.
  + Positivas, negativas o nulas.
  + Escalares, vectoriales y tensoriales.
+ La aceleración de un móvil puede descomponerse en:
  + Aceleración positiva (aumenta la velocidad del móvil) y aceleración negativa (frena al cuerpo).
  + Aceleración tangencial (aumenta o disminuye la velocidad del móvil) y aceleración vertical (contiene los efectos gravitatorios).
  + La aceleración no se suele descomponer en la práctica.
  + Aceleración tangencial (aumenta o disminuye la velocidad del móvil) y aceleración normal (es la que provoca el cambio de dirección de la velocidad).
+ Un Movimiento Circular Uniformemente Acelerado es:
  + Un movimiento en el que existe una aceleración que puede considerarse angular.
  + Un movimiento de trayectoria circular en el cual se tienen en cuenta los efectos de la aceleración uniforme de la gravedad.
  + Es un movimiento circular en el cual existe una aceleración angular constante.
  + Es una forma alternativa de tratar los movimientos rectilíneos uniformes que simplifica considerablemente las ecuaciones utilizadas.

+ Indica la afirmación correcta:
  + Las fuerzas de acción y reacción siempre se cancelan, ya que son iguales en módulo, opuestas en sentido, y actúan sobre el mismo cuerpo.
  + Las fuerzas de acción y reacción nunca se cancelan. Aunque sean iguales en módulo y opuestas en sentido, actúan sobre diferentes cuerpos.
  + Las fuerzas de acción y reacción, de acuerdo con la segunda ley de Newton, proporcionan una aceleración neta sobre el cuerpo en el que actúan.
  + Las fuerza de acción es siempre una fuerza fundamental, y la de reacción una fuerza ficticia, que aparece solo en sistemas de referencia no inerciales.

+ Las tres características esenciales de las fuerzas de ligadura son:
  + Producen movimiento, su magnitud es ilimitada y son siempre normales a las superficies o paredes a las que sustituyen.
  + No producen movimiento, su magnitud está restringida y son siempre normales a las superficies o paredes a las que sustituyen.
  + No producen movimiento, su magnitud es ilimitada y son siempre normales a las superficies o paredes que las sustituyen.
  + Igual que C, pero no siempre son normales a las superficies o paredes que la sustituyen.
+ Cuando sobre un cuerpo actúa sólo una fuerza perpendicular a la trayectoria:
  + el vector momento lineal p del cuerpo no varía.
  + el vector aceleración es constante.
  + el cuerpo describe una trayectoria recta.
  + el módulo del vector momento lineal p no varía.
+ El trabajo realizado por las fuerzas conservativas:
  + es nulo.
  + sólo depende del punto inicial y del punto final.
  + en una trayectoria cerrada es siempre positivo.
  + en una trayectoria cerrada es siempre negativo.
+ Si la masa de un muelle se encuentra en un punto de coordenada $x<0$, se cumple necesariamente que:
  + la energía potencial es negativa.
  + la aceleración es positiva.
  + la velocidad es negativa.
  + la aceleración es negativa.
+ El momento angular total de un sistema de partículas es:
  + La suma vectorial de los momentos angulares de cada una de sus partículas.
  + El producto vectorial múltiple del momento angular de cada una de las partículas.
  + La suma vectorial de los momentos angulares de cada partícula, solo si la interacción interna corresponde a fuerzas conservativas.
  + El momento de todas las partículas del sistema referido al centro de masas.

+ El campo y el potencial creados por un conjunto de cargas puntuales verifica que:
  + El campo es la simple suma de los campos creados por cada una de las cargas puntuales, pero el potencial no, debido a sus características.
  + El campo solo es aditivo si las cargas son todas del mismo signo. Si no es así, tienen distintas unidades y no pueden sumarse. El potencial sí es aditivo en cualquier circunstancia.
  + Tanto campo eléctrico como potencial son aditivos: el campo creado por varias cargas en un punto es la suma de los campos de cada carga y lo mismo sucede con el potencial eléctrico.
  + El potencial eléctrico es la media aritmética del creado por cada carga puntual. No sucede así con el campo.
+ Según los experimentos de Faraday y de Henry:
  + Mover imanes en las proximidades de espiras (alambres doblados en forma de círculos) crea en ellas la aparición de una corriente eléctrica.
  + Las corrientes eléctricas son capaces de desviar brújulas, al igual que lo hacen los imanes.
  + Los imanes repelen a circuitos por los que pasa corriente.
  + Un imán quieto junto a una espira provoca la aparición de corrientes eléctricas.
+ La ley Faraday-Henry establece que:
  + La intensidad inducida en una espira es tal que se opone a la causa que la crea.
  + La fuerza electromotriz inducida en una espira es igual al flujo.
  + La fuerza electromotriz inducida en una espira es igual al opuesto del cambio del flujo magnético con respecto al tiempo a través de la superficie definida por la espira.
  + Cambiar la posición de una fuente de campo magnético con respecto a un circuito genera en este una corriente eléctrica.

=
Se tienen dos cargas puntuales: $q_1 = #qty(5, "nano coulomb")$ en el punto de coordenadas $(a, a) #unit("meter")$ y $q_2 = #qty(-5, "nano coulomb")$ en el punto de coordenadas $(-a, -a) #unit("meter")$. Recuerda que $K = #qty("9e9", "newton meter squared per coulomb squared")$.

Se pide:
- Hacer un esquema de las cargas y dibujar el vector campo eléctrico en los puntos de coordenadas $(-a, a)$ y $(a, -a)$.
- Sabiendo que en el punto $(-a, a)$ una carga $q_0 = #qty(4, "nano coulomb")$ experimenta una fuerza dada por $ F = - #num("5e-9") hat(i) - #num("5e-9") hat(j) thin #unit("newton")$, determinar el valor de a.
- Calcular el potencial creado por $q_1$ y $q_2$ en los puntos $(0, 0)$ y $(a, 0)$, tomando como valor de $a$ el calculado en el apartado anterior.

=
2. Una bola de acero tiene una masa #qty(1, "kilo gram") y se mueve en línea recta con una velocidad de módulo #qty(14, "meter per second"). La bola impacta en un bloque de masa de #qty(3, "kilo gram"), inicialmente en reposo sobre una superficie sin rozamiento, quedando incrustada en él.
Se requiere:
1. Calcula la velocidad del sistema bola-bloque después de la colisión.
2. Tras la colisión, el sistema bola-bloque comienza a subir por un plano inclinado de 30 grados con rozamiento. Determinar el coeficiente de rozamiento en el plano inclinado si el conjunto se para al llegar a una altura sobre el suelo de #qty(0.4, "meter").
