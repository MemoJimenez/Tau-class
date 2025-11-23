# Tau ~ Version 2.4.3

## Description

The main features of the class are as follows.

* The class document and custom packages are available in a *single* folder.
* Stix2 font for clear text.
* Custom environments for notes and information.
* Custom colours when code is inserted for programming languages (Matlab, C, C++, and LaTeX).
* Appropriate conjunction ('y' for Spanish, 'and' for English) when two authors are included.
* This LaTeX template is compatible with external editors. 

## Updates Log

### Version 1.0.0 (01/03/2024)

[1] Launch of the first edition of tau-book class, made especially for academic articles and laboratory reports. 

### Version 2.0.0 (03/03/2024)

[1] The table of contents has a new design.

[2] Figure, table and code captions have a new style.

### Version 2.1.0 (04/03/2024)

[1] All URLs have the same font format.

[2] Corrections to the author "and" were made.

[3] Package name changed from kappa.sty to tau.sty.

### Version 2.2.0 (15/03/2024)

[1] Tau-book is dressed in midnight blue for title, sections, URLs, and more.

[2] The \abscontent{} command was removed and the abstract was modified directly.

[3] The title is now centered and lines have been removed for cleaner formatting.

[4] New colors and formatting when inserting code for better appearance.

### Version 2.3.0 (08/04/2024)

[1] Class name changed from tau-book to just tau. 

[2] A new code for the abstract was created.

[3] The abstract font was changed from italics to normal text keeping the keywords in italics.

[4] Taublue color was changed.

[5] San Serif font was added for title, abstract, sections, captions and environments.

[6] The table of contents was redesigned for better visualization.

[7] The new environment (tauenv) with customized title was included.

[8] The appearance of the header was modified showing the title on the right or left depending on the page.

[9] New packages were added to help Tikz perform better.

[10] The pbalance package was added to balace the last two columns of the document (optional).

[11] The style of the fancyfoot was changed by eliminating the lines that separated the information.

[12] New code was added to define the space above and below in equations. 

### Version 2.3.1 (10/04/2024)

[1] We say goodbye to tau.sty.

[2] Introducing tauenvs package which includes the defined environments.

[3] The packages that were in tau.sty were moved to the class document (tau.cls).

### Version 2.4.0 (14/05/2024)

[1] The code of the title and abstract was modified for a better adjustment.

[2] The title is now placed on the left by default, however, it can be changed in title preferences (see appendix for more information).

[3] Titlepos, titlefont, authorfont, professorfont now define the title format for easy modification.

[4] When the 'professor' is not declared, the title space is automatically adjusted.

[5] Bug fixed when 'keywords' command is not declared.

[6] The word “keywords” now begins with a capital letter.

[7] The color command taublue was changed to 'taucolor'.

[8] When a code is inserted and the package 'spanish' is declared, the caption code will say “Código”.

[9] Footer information is automatically adjusted when a command is not declared.

[10] The 'ftitle' command is now 'footinfo'.

[11] The footer style of the first page is not shown on odd pages.

[12] Pbalance package is disable by default, however, uncomment if is required in 'tau.cls'.

### Version 2.4.1 (22/05/2024)

[1] Now all class files are placed in one folder (rho-class).

[2] New command ‘journalname’ to provide more information.

[3] The environments now have a slightly new style.

[4] New package (rhobabel) added to make the translation of the document easier.

[5] A frame was added when placing a code.

### Version 2.4.2 (26/07/2024)

[1] The language boolean function has been removed from taubabel.sty and the language is now manually set in the main.tex to avoid confusion.

[2] The graphics path option was added in tau.cls/packages for figures.

### Version 2.4.3 (01/09/2024)

[1] Journalname has modified its font size to improve the visual appearance of the document.

## Supporting

I appreciate that you are using tau class as your preferred template. If you would like to acknowledge this class, adding a sentence somewhere in your document such as 'this report/article was typeset using the tau class a LaTeX template' would be great!

**More of our work**

Did you like this class document? Check out our new project, made for complex articles and reports.

    https://es.overleaf.com/latex/templates/rho-class-academic-article-template/bpgjxjjqhtfy

**Any contributions are welcome!**

Coffee keeps me awake and helps me create better LaTeX templates. If you wish to support my work, you can do so through PayPal: 

    https://www.paypal.me/GuillermoJimeenez
  
## License

This work is licensed under Creative Commons CC BY 4.0. 
To view a copy of CC BY 4.0 DEED, visit:

    https://creativecommons.org/licenses/by/4.0/

This work consists of all files listed below as well as the products of their compilation.

```
Tau-class/
`-- tau-class/
    |-- tau.cls
    |-- taubabel.sty
    |-- tauenvs.sty
`-- main.tex
`-- tau.bib
`-- README.md
```

## Contact me

Do you like the design, but you found a bug? Is there something you would have done differently? All comments are welcome!

*Email: memo.notess1@gmail.com*

*Instagram: memo.notess*

*Website: https://memonotess1.wixsite.com/memonotess*

---
Enjoy writing with tau-class :)
