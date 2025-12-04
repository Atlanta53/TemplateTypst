# TemplateTypst

This is a repository containing my template for Typst. Ce repository contient mon template pour mes fichiers Typst. 

This template is based on the following packages / Il se base sur les packages suivants :
- [catppuccin](https://typst.app/universe/package/catppuccin/)
- [fontawesome](https://typst.app/universe/package/fontawesome/)
- [itemize](https://typst.app/universe/package/itemize/)

![A4 example](/res/a4.png)
![A4 landscape example](/res/landscape.png)

## Requirements

> [!NOTE] 
> You can use your own font if you want, these fonts are the default for this template. Vous pouvez modifier votre police si vous voulez, ces polices sont celles demandées par défaut (si vous ne les avez pas sur le système, cela ne pourra fonctionner sauf si vous modifiez la police du document).

- Default Font / Polices par défaut :
    - [Nunito](https://fonts.google.com/specimen/Nunito)
    - [Cascadia Code](https://fonts.google.com/specimen/Cascadia+Code)
    - [Font Awesome](https://fontawesome.com/download) -> required for the icons / requis pour les icônes

## Usage

> [!TIP]
> I recommend using VSCode + [Tinymist](https://github.com/Myriad-Dreamin/tinymist)(as a plugin to VSCode) to use this template. Je conseille vivement d'utiliser VSCode avec le plugin [Tinymist](https://github.com/Myriad-Dreamin/tinymist) pour éditer ce template.

To use this template, copy the `template.typ` file in your directory and simply import it into your own `.typ` file like this / Pour utiliser ce template, il vous suffit de copier le fichier `template.typ` dans votre dossier et de l'importer dans votre fichier `.typ` de la façon suivante :

```typ
#import "Template.typ": *

#show: template.with(
  title: "Your title / Votre titre",
  school: "Votre structure ou Ecole",
  page_paper: "a4",
  lang: "fr",                      
  font: "Nunito",
  font_code: "Cascadia Code",
  show_bib: true,
  bib_file: "Bibliography.bib",
  ... Add your arg if needed / Rajoutez vos arguments ici au besoin
)
```

The current arguments you can add are the following / Les arguments possibles que vous pouvez actuellement rajouter sont :

- *title* : Document title / Titre du document
- *school* : School or company / Ecole ou structure
- *page_paper* : The document paper format / Format de la page (A4, A3, ...)
- *landscape* : Boolean to choose a landscape format / Booléen pour choisir le format paysage ou portrait
- *margin* : Document margin / Marges du document
- *space_title* : Space between the header and the title / Espace entre l'en-tête et le titre
- *header_numbering* : Title format / Format des titres (exemples : "1.1.", "I)", "a.", "A)")
- *num_page* : Page numbering / Affichage des numéros de page (none ou "1")
- *nb_columns* : Column number / Nombre de colonnes pour le document
- *column_space* : Column spacing / Espace entre les colonnes
- *lang* : Document language / Langue du fichier (exemples : "en" ou "fr")
- *font* : Document font / La police de votre document
- *font_code* : Code bloc font / La police des blocs de code
- *font_size* : Font size / Taille de la police dans le document
- *spacing* : Spacing between lines / Espacement entre les lignes
- *include_title_in_zone* : Boolean to include the title in its own zone / Booléen pour inclure le titre dans une zone à part
- *show_table_of_content* : Boolean to show the table of content / Booléen pour afficher ou non le sommaire
- *show_bib* : Boolean to show the biliography / Booléen pour afficher ou non la bibliographie
- *show_header* : Boolean to show the document header / Booléen pour afficher ou non le bandeau d'en-tête
- *bib_file* : The name of the .bib file / Nom du fichier .bib
- *theme* : Catppuccin Flavor selected and the colors / Palette de couleur choisie pour Catppuccin


### Dark Theme

You can also switch to the Catppuccin Mocha theme with th following parameters / Vous pouvez aussi changer le thème Catppuccin en passant de latte à mocha avec les paramètres suivants (et en ajoutant le paramètre thème dans template) :

```typ
#let flavor = "mocha"

#let colors = get-flavor(flavor).colors

#let note = note.with(flavor: flavor)
#let skill = skill.with(flavor: flavor)
#let tip = tip.with(flavor: flavor)
#let comment = comment.with(flavor: flavor)
#let important = important.with(flavor: flavor)
#let warning = warning.with(flavor: flavor)

#show: template.with(
  ... Your args / Vos arguments,
  theme: (flavor: flavor),
)
```
