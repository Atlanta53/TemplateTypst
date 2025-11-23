# TemplateTypst

This is a repository containing my template for Typst. Ce repository contient mon template pour mes fichiers Typst. 

This template is based on the following packages / Il se base sur les package suivants :
- [catppuccin](https://typst.app/universe/package/catppuccin/)
- [fontawesome](https://typst.app/universe/package/fontawesome/)
- [itemize](https://typst.app/universe/package/itemize/)


## Requirements

> [!NOTE] 
> You can use your own font if you want, these font are the default for this template. Vous pouvez modifiez votre police si vous voulez, ces polices sont celles demandées par défaut (si vous ne les avez pas sur le système, cela ne pourra fonctionner sauf si vous modifiez la police du document).

- Default Font / Polices par défaut :
    - [Nunito](https://fonts.google.com/specimen/Nunito)
    - [Cascadia Code](https://fonts.google.com/specimen/Cascadia+Code)
    - [Font Awesome](https://fontawesome.com/download) -> required for the icons / requis pour les icônes

## Usage

To use this template, copy the `template.typ` file in your directory and simply import it in your own `.typ` file like this / Pour utiliser ce template, il vous suffit de copier le fichier `template.typ` dans votre dossier et de l'importer dans votre fichier `.typ` de la façon suivante :

```typ
#import "Template.typ": *

#show: template.with(
  title: "Your title / Votre titre",
  school: "Votre structure ou Ecole",
  page_paper: "a4",
  lang: "fr",                      
  font: "Nunito",
  font_math: "Nunito",
  font_code: "Cascadia Code",
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
- *font_math* : Math font / La police des blocs de math
- *font_code* : Code bloc font / La police des blocs de code
- *font_size* : Font size / Taille de la police dans le document
- *spacing* : Spacing between lines / Espacement entre les lignes
- *show_table_of_content* : Boolean to show the table of content / Booléen pour afficher ou non le sommaire
- *show_bib* : Boolean to show the biliography / Booléen pour afficher ou non la bibliographie
- *show_header* : Boolean to show the document header / Booléen pour afficher ou non le bandeau d'en-tête
- *bib_file* : The name of the .bib file / Nom du fichier .bib
