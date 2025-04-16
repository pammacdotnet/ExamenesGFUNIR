
#set page(paper: "newspaper-berliner")
#align(horizon + left)[

  #text(size: 40pt, [ACTIVIDAD GRUPAL 1: EL FORMALISMO DE LAGRANGE Y EL FORMALISMO DE HAMILTON])

  #text(size: 30pt, [Mecánica Clásica])

  #text(size: 25pt, [Javier Rodríguez del Olmo \ María Cristina Moral Saiz \ Álvaro Bárcena Menéndez])
  \
  \
  \
  \
  \
]

#set page(
  paper: "newspaper-berliner",
  header: [
    #grid(
      columns: (1fr, 1fr, 1fr),
      text(15pt)[ACTIVIDAD GRUPAL 1: MECÁNICA CÁSICA],
      align(center)[ ],
      text(15pt)[Javier Rodríguez del Olmo \ María Cristina Moral Saiz \ Álvaro Bárcena Menéndez],
    )
  ],
)
#set text(lang: "es")
#import "@preview/wrap-it:0.1.0": wrap-content
#import "@preview/gentle-clues:1.0.0": *
#import "@preview/mannot:0.2.3": *
#set par(justify: true)


#show heading.where(level: 1): it => block(width: 100%)[
  #set align(left)
  #text(20pt, weight: "bold", font: "New Computer Modern")[
    #smallcaps(it.body)
    #v(10pt)
  ]
]

#let solucion(title: "Solución", ..args) = clue(
  accent-color: blue,
  title: title,
  ..args,
)

#set text(font: "New Computer Modern", size: 18pt, tracking: .25pt, lang: "es")
#show math.equation: set text(font: "New Computer Modern Math", fallback: true, size: 17pt)

#let tab = context {
  let tab_left = 2.5cm // leftmost tab stop (i.e. page margin)
  let tab_width = 2.0cm // width of a single tab stop

  let pos = here().position() // caller position
  let column = 1 + calc.trunc((pos.x - tab_left) / tab_width) // column where this tab is located
  let advance_to = tab_left + column * tab_width // position needed for the next tab stop

  box(width: advance_to - pos.x)
}
#let flecha = $arrow.r.double$

= 1. Péndulo doble
#tab Obtener la lagrangiana y las ecuaciones del movimiento para el péndulo doble representado en la figura. Las longitudes de los péndulos son $l_1$ y $l_2$, y las masas correspondientes son $m_1$ y $m_2$. Tomaremos como coordenadas generalizadas $theta_1$ y $theta_2$.
#solucion[
  #tab Primero determinamos las posiciones:

  $x_1= l_1 sin theta_1 ;$

  $y_1=-l_1 cos theta_1 ;$

  $x_2 = l_1 sin theta_1 + l_2 sin theta_2 ;$

  $y_2 = -l_1 cos theta_1 - l_2 cos theta_2 .$

  #tab A partir de estas expresiones podemos deducir las velocidades:

  $dot(x)_1=l_1 dot(theta)_1 cos theta_1 ;$

  $dot(y)_1=l_1 dot(theta)_1 sin theta_1 ;$

  $dot(x)_2=l_1 dot(theta)_1 cos theta_1 + l_2 dot(theta)_2 cos theta_2 ;$

  $dot(y)_2=l_1 dot(theta)_1 sin theta_1 + l_2 dot(theta)_2 sin theta_2 .$

  #tab El módulo de $v_1$ será:

  $v_1= sqrt(dot(x)_1^2+dot(y)_1^2) #flecha v_1= sqrt(l_1^2 dot(theta)_1^2 cos^2 theta + l_1^2 dot(theta)_1^2 sin^2 theta) #flecha v_1 = sqrt(l_1^2 dot(theta)_1^2(cos^2 theta+sin^2theta)) #flecha v_1 = sqrt(l_1^2 dot(theta)_1^2)$
]
#solucion[
  #tab Y para calcular el módulo de $v_2$:

  $dot(x)_2^2= l_1^2 dot(theta)_1^2cos^2theta_1
    +2l_1l_2 dot(theta)_1 dot(theta)_2cos theta_1 cos theta_2+l_2^2 dot(theta)_1^2cos^2 theta_2;$

  $dot(y)_2^2= l_1^2 dot(theta)_1^2 sin^2 theta_1+2l_1 dot(theta)_1 l_2 dot(theta)_2sin theta_1 sin theta_2 +l_2^2dot(theta)_2^2 sin^2theta_2.$

  $v_2 =sqrt(dot(x)_2^2+dot(y)_2^2) #flecha \ v_2= sqrt(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos theta_1 cos theta_2+sin theta_1 sin theta_2)+l_2^2dot(theta)_2^2) #flecha \
v_2= sqrt(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2).$

  #tab La energía cinética quedará como:

  $T_1 = 1/2m_1v_1^2 #flecha T_1= 1/2 m_1 l_1^2dot(theta)_1^2 .$

  $T_2= 1/2 m_2 v_2^2 #flecha T_2= 1/2 m_2(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2).$
  \
  \
  $
    T = 1 / 2 m_1 l_1^2dot(theta)_1^2 + 1 / 2 m_2(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2.
  $
  #tab Calculamos la energía potencial:

  $V_1=m_1g y_1 =-m_1 g l_1 cos theta_1;$

  $V_2=m_2 g y_2 = -m_2 g (l_1 cos theta_1 +l_2 cos theta_2);$
  \
  \
  $ V= -m_1 g l_1 cos theta_1 -m_2 g (l_1 cos theta_1 +l_2 cos theta_2). $
  #tab Por lo tanto el lagrangiano queda:
  $ L=T-V #flecha $


  $
    L = markul(1/2 m_1 l_1^2dot(theta)_1^2 + 1/2 m_2(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2), tag: #<cin>, color: #blue) + \
    markul(m_1 g l_1 cos theta_1  +m_2 g (l_1 cos theta_1 +l_2 cos theta_2), tag: #<pot>, color: #red)
  $

  #annot(<cin>, pos: top + left)[T]


  $
    L = markrect((-marktc(markul(1/2 m_1 l_1^2dot(theta)_1^2 + 1/2 m_2(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2), tag: #<cin>, color: #blue), tag: #<T>))) + \ markrect((-marktc(markul(1/2 m_1 l_1^2dot(theta)_1^2 + 1/2 m_2(l_1^2 dot(theta)_1^2+2l_1 dot(theta)_1l_2 dot(theta)_2(cos(theta_1-theta_2))+l_2^2dot(theta)_2^2), tag: #<cin>, color: #blue), tag: #<V>)))
  #annot(<T>, pos: top + left, yshift: 2em)[Parte uno del lagrangiano]
  #annot(<V>, pos: bottom + left, yshift: 2em)[Parte dos del lagrangiano]
  $
  #v(1cm)

  #tab Determinamos la ecuación de Euler Lagrange para $theta_1$:

  $(diff L)/(diff theta_1)=-m_2l_1l_2 dot(theta)_1 dot(theta)_2 sin(theta_1 - theta_2)-m_1g l_1 sin theta_1-m_2 g l_1 sin theta_1$.

  $(diff L)/(diff dot(theta)_1)= m_1l_1^2+m_2l_1^2 dot(theta)_1+m_2l_1l_2 cos(theta_1-theta_2)$.

  $d / (d t)((diff L) / (diff dot(theta)_1))=m_1 l_1^2 dot.double(theta)_1+m_2 l_1^2 dot.double(theta)_1-m_2l_1l_2[dot.double(theta)_2 cos(theta_1 - theta_2)-dot(theta)_2 (dot(theta)_1-dot(theta_2))sin(theta_1 - theta_2)]$

  $ d / (d t)((diff L) / (diff dot(theta)_1))-(diff L) / (diff theta_1)= 0 $
  $
    m_1 l_1^2 dot.double(theta)_1+m_2 l_1^2 dot.double(theta)_1-m_2l_1l_2[dot.double(theta)_2 cos(theta_1 - theta_2)-dot(theta)_2 (dot(theta)_1-dot(theta_2))sin(theta_1 - theta_2)]
  $ $ +m_2l_1l_2 dot(theta)_1 dot(theta)_2 sin(theta_1 - theta_2)+m_1g l_1 sin theta_1+m_2 g l_1 sin theta_1=0 $

  #tab Ahora calculamos la ecuación Euler Lagrange para $theta_2$:

  $(diff L) / (diff theta_2)=m_2l_1l_2 dot(theta)_1 dot(theta)_2 sin(theta_1-theta_2)-m_2g l_2 sin(theta_2).$]

#solucion[
  $(diff L)/(diff dot(theta)_2)=m_2l_2^2 dot(theta)_2 + m_2l_1l_2 dot(theta)_1 cos(theta_1 -theta_2)$.

  $d / (d t)((diff L) / (diff dot(theta)_2))=m_2l_2^2 dot.double(theta)_2+m_2l_1l_2[dot.double(theta)_1 cos(theta_1 -theta_2)-dot(theta)_1(dot(theta)_1-dot(theta)_2) sin(theta_1-theta_2)]$
  $ d / (d t)((diff L) / (diff dot(theta)_2))- (diff L) / (diff theta_2) =0 $
  $
    m_2l_2^2 dot.double(theta)_2+m_2l_1l_2[dot.double(theta)_1 cos(theta_1 -theta_2)-dot(theta)_1(dot(theta)_1-dot(theta)_2) sin(theta_1-theta_2)]
  $$ - m_2l_1l_2 dot(theta)_1 dot(theta)_2 sin(theta_1-theta_2)+m_2g l_2 sin(theta_2)=0 $
]



