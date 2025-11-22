#import "Template.typ": *


#show: template.with(
  title: "Exemples",
  school: "Structure or école",
  landscape: false,
  margin: (top: 1.5cm, bottom: 1.5cm, right: 1.5cm, left: 1.5cm),
  lang: "fr",                                    
  nb_columns: 1,
  column_space: 20pt,
  num_page: "1",                  
  font: "Nunito",
  font_size: 8pt,
  spacing: 8pt,             
  show_table_of_content: true,
  show_bib: true,
  bib_file: "Bibliography.bib"
)

= Exemples


== Listes

- item 1
- item 2
- item 3

#set enum(numbering: "a)")

+ Starting off ...
+ Don't forget step two

#set enum(numbering: "1.")

+ Starting off ...
+ Don't forget step two

/ Ligature: A merged glyph.
/ Kerning: A spacing adjustment between two adjacent letters.


== Bloc de Code

```sh
sudo rm
cd test
```


== Styles

_Italic_ \
*Bold* \
#underline[souligné]

== Spacing

First #h(1fr) Second #h(1fr) Third

First
#v(1fr) 
Second
#v(1fr) 
Third

#pagebreak()


== Alignement

#set align(center)
#lorem(25)

#set align(right)
#lorem(25)

#set align(horizon + left)
#lorem(25)

#set align(right + bottom)
#lorem(25)

#set align(start + top)
#lorem(25)

#pagebreak()

== Citation


#quote(attribution: [from the Henry Cary])[
  ... I seem, then, in just this little thing to be wiser than this man at
  any rate, that what I do not know I do not think I know either.
]

== Bloc de math

$ Q = rho A v + "time offset" $
$ 7.32 beta +
  sum_(i=0)^nabla
    (Q_i (a_i - epsilon)) / 2 $
$ v := vec(x_1, x_2, x_3) $

== Lien

#link("https://example.com")[See example.com]

== Colonnes

#columns(2,
 [
  #lorem(50)
  #colbreak()
  #lorem(50)
 ]
)

== Image

Vous pouvez également citer cette image avec @image_label

#image("NixOS_KDE.png", width: 10%)

#figure(
  image("NixOS_KDE.png", width: 90%),
  caption: [ Ceci est une caption ],
) <image_label>

== Pied de page

Ceci est un exemple de pied de page #footnote[https://typst.app/app] <fn>. Vous pouvez aussi l'appeler comme ceci @fn.


== Citation bibliographie

Ceci est une citation de document @texbook

== Tableau


#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: 25pt,
  align: center + horizon,
  table.header(
    [],
    [Col],
    [Col],
    [Col],
  ),
  [Ligne], [], [], [],
  [Ligne], [], [], [],
)

#figure(
  table(
    columns: 4,
    rows: 25pt,
    align: center + horizon,
    table.header(
      [],
      [Col],
      [Col],
      [Col],
    ),
    [Ligne], [], [], [],
    [Ligne], [], [], [],
  ),
  caption: [Ceci est une caption]
)

== Grille

#grid(
  columns: (60pt, 1fr, 2fr),
  rows: (auto, 60pt),
  gutter: 16pt,
  grid.cell(colspan: 1, lorem(5), fill: colors.lavender.rgb),
  grid.cell(colspan: 1, lorem(5), fill: colors.lavender.rgb),
  grid.cell(colspan: 1, lorem(5), fill: colors.lavender.rgb),
  grid.cell(colspan: 1, lorem(2), fill: colors.red.rgb),
  grid.cell(
    colspan: 2,
    image("NixOS_KDE.png", width: 100%),
  ),
  grid.cell(colspan: 3, lorem(25), fill: colors.lavender.rgb),
)

== Blocs

#note[#lorem(25)]

#note(linebreak: false, show_icon: false)[#lorem(25)]

#note(title: "Important", title_color: colors.base.rgb, text_color: colors.base.rgb, fill_color: colors.mauve.rgb, icon: "school")[#lorem(25)]

#skill()[#lorem(25)]

#important()[#lorem(25)]

#comment()[#lorem(25)]

#tip()[#lorem(25)]

#warning()[#lorem(25)]

== Pill

Ceci est une #pill()[Avec du texte PDF]





