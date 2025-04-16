#import "@preview/typsium:0.2.0": ce
#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
#import "@preview/gentle-clues:1.2.0": *

#set text(font: "Comic Neue", size: 18pt, lang: "es")

#set page(
  background: rotate(
    24deg,
    par(
      text(180pt, fill: rgb("#00c8b428"))[
        *No uses Wuolah, leñe!*
      ],
    ),
  ),
  margin: 40pt,
  paper: "a4",
)
#set enum(numbering: "1.A)")
#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Química - Grado en Física (UNIR)]]
= Di si las siguientes afirmaciones son verdaderas o falsas
+ A partir de las constantes de equilibrio de una reacción química es posible establecer las condiciones óptimas para que un proceso químico determinado se lleve a cabo.
+ Las reacciones endotérmicas son aquellas en las que se libera calor al formarse los productos de reacción
+ En reacciones donde los reactivos se encuentren en forma de iones, será mucho más difícil romper los enlaces químicos, y por lo tanto la reacción será más lenta.
+ Un puente de hidrógeno es una fuerza atractiva apolar que se establece entre un átomo electronegativo y otro átomo que se encuentra unido covalentemente a un átomo de hidrógeno.
+ Aunque ambos, enlaces químicos y fuerzas intermoleculares, son fuerzas de unión, éstos tienen diferencias bastante significativas en cuanto a sus propiedades.


= Elije la opción correcta

+ Gilbert Lewis define un ácido como
  + aquellas sustancias que pueden aceptar protones.
  + aquella sustancia que acepta un par de electrones.
  + aquella sustancia que puede donar protones (#ce("H^+")).
  + aquella sustancia capaz de donar un par electrónico.
+ El grado de desorden de una reacción química se define mediante el parámetro termodinámico:
  + Entropía.
  + Energía de activación.
  + Entalpía.
  + Energía de enlace.
+ La estequiometría permite conocer:
  + Los productos iniciales.
  + Los mecanismos durante la reacción química.
  + Moléculas iniciales y los productos finales.
  + Los cambios de composición que se dan en una reacción química.
+ Cuando se unen varios átomos a través de los enlaces químicos se forman:
  + Iones.
  + Neutrones.
  + Moléculas.
  + Aniones.
+ Un enlace covalente es:
  + La unión que se da entre dos átomos que se transfieren electrones entre sí, donde uno cede y otro capta electrones.
  + La unión que se da entre dos átomos que comparten dos o más electrones de sus capas de valencia para formar una molécula estable.
  + La unión que se da entre dos átomos que se transfieren neutrones entre sí.
  + La unión que se da entre dos átomos que comparten dos o más protones de sus núcleos para formar una molécula estable.


= Problemas
El amoniaco gas (#ce("NH3")), a #qty(25, "celsius"), puede oxidarse en presencia de oxígeno molecular (#ce("O2")), dando #ce("NO") y agua (#ce("H2O")).
- Escriba y ajuste esta reacción, y calcule su variación de entalpia.
- Calcule $Delta #math.upright("G")^0$ para la reacción indicada.
- Calcule $Delta #math.upright("S")^0$ a #qty(25, "celsius") y justifique su signo.
- Determine la temperatura a partir de la cual la reacción es espontanea.


#tip(title: "Datos")[
  - La $Delta #math.upright("H")^0_f$ del #ce("NH3(g)"), en #unit("kilo joule per mole"), es igual a -46, la del #ce("NO(g)") es igual a 90, y la del agua es igual a -286.
  - La $Delta #math.upright("G")^0_f$, en #unit("kilo joule per mole"), del #ce("NH3(g)") es igual a -17, la del #ce("NO(g)") es igual a 86, y la del #ce("H2O") es -237.
  - Considera $R = #qty(0.082, "atmosphere per mole per kelvin")$.
]
