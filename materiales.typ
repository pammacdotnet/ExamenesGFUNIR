#import "@preview/unify:0.7.1": qty
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

#text(weight: "extrabold", size: 30pt)[#align(center)[Examen de Materiales (Unir Física)]]


=
Un cable conductor de longitud #qty(0.2, "meter") y sección transversal circular de radio #qty(1, "milli meter"), está formado de un material semiconductor intrínseco a temperatura ambiente (#qty(300, "kelvin")), constituido por un elemento químico de 4 electrones de valencia en su última capa. El gap de la banda prohibida del semiconductor es de #qty(0.9, "electronvolt"), la movilidad de los electrones y huecos es $0.4$ y #qty(0.2, "meter squared per volt per second"), respectivamente, y las masas efectivas de los electrones y huecos son $0.15 thin m_e$ y $0.3 thin m_e$, respectivamente, donde $m_e$ es la masa del electrón. Determina la resistencia eléctrica del cable.

=
El semiconductor del ejercicio anterior se dopa con impurezas de un elemento químico con 3 electrones de valencia en su última capa.

Menciona el tipo de semiconductor extrínseco que se forma.

Considerando que la movilidad de electrones y huecos se mantiene y que a temperatura ambiente todas las impurezas están ionizadas, determina la concentración de impurezas al que debe doparse el material para reducir la resistencia del cable a un factor $10^(-4)$ respecto a la del intrínseco.

Calcula la concentración de electrones y huecos.

Determina la posición del nivel de Fermi respecto al centro de la banda prohibida para el semiconductor intrínseco y el nuevo semiconductor dopado.


=
Considera el semiconductor dopado del ejercicio anterior, el cual sabemos que en equilibrio térmico la tasa de generación y recombinación de pares es de #qty("1E5", "per centi meter cubed per second").
Calcula la vida media de los portadores minoritarios, o tiempo promedio que tarda en recombinarse.

Iluminamos uniformemente el cable, produciendo así una tasa de generación de pares $g = #qty("1E20", "per centi meter cubed per second")$. Determina el exceso y la concentración total de portadores minoritarios en el estado estacionario. Una vez se apaga la iluminación, calcula el exceso de portadores minoritarios tras transcurrir 10 segundos.


=
Un material superconductor es sometido a un campo magnético externo $B = #qty(1, "tesla")$. La temperatura crítica del material es #qty(5.2, "kelvin"), el campo crítico máximo es #qty(1.8, "tesla") y la concentración máxima de portadores superconductores es $qty("1E29", "per meter cubed")$. Calcula la intensidad del campo magnético a una profundidad de 20 nm cuando el material se encuentra a las temperaturas de 2.5 K y 5 K.

=
Considerar un prisma de longitudes $L_x = #qty(1, "centi meter")$, $L_y = #qty(2, "centi meter")$, $L_z = #qty(10, "centi meter")$, constituido por un material elástico y caracterizado por el módulo de Young, $E= #qty(40, "mega pascal")$, y el coeficiente de Poisson, $ν=0.4$. El prisma se somete a los esfuerzos longitudinales siguientes:
$sigma_x = #qty(100, "kilo pascal")$,    $sigma_y = #qty(50, "kilo pascal")$, y   $sigma_z = #qty(200, "kilo pascal")$ .
Determinar la variación de volumen del prisma.

Si además de los esfuerzos longitudinales anteriores, el prisma se somete a los esfuerzos paralelos siguientes: $tau_(x y) = tau_(y x) = #qty(80, "kilo pascal")$ y
$tau_(x z) = tau_(z x) = #qty(100, "kilo pascal")$
y el resto de esfuerzos paralelos es nulo, escribe el tensor de deformación del material.
