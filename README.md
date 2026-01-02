# Tau ~ Version 2.5.0

## Description

Tau is a LaTeX2e document class designed for the creation of professional, well-structured research articles, technical/lab reports, and academic documentation.

The main features of the class include:

* A self-contained structure, where the class file and custom packages are distributed within a single folder for easy setup and portability.
* STIX2 as the primary serif font, providing excellent readability for body text and mathematical content.
* Custom environments for notes, information blocks, and structured content.
* Enhanced code presentation, with custom color schemes for multiple programming languages (e.g., MATLAB, C, C++, TeX).
* Integration of a dedicated translation package that simplifies the translation of selected document elements, allowing automatic adaptation to the document language.
* Compatible with external editors such as TeXstudio (additional setup may be required).

## License

This work is licensed under Creative Commons CC BY 4.0. 
To view a copy of CC BY 4.0 DEED, visit:

    https://creativecommons.org/licenses/by/4.0/

This work consists of all files listed below as well as the products of their compilation.

```
tau/
`-- tau-class/
    |-- tau.cls
    |-- taubabel.sty
    |-- tauenvs.sty
`-- main.tex
`-- tau.bib
```

## Supporting

I appreciate that you are using tau class as your preferred template. If you would like to acknowledge this class, adding a sentence somewhere in your document such as 'this [your document type] was typeset in LaTeX with the tau class' would be great!

### Any contributions are welcome!

Coffee keeps me awake and helps me create better LaTeX templates. If you wish to support my work, you can do so through PayPal: 

    https://www.paypal.me/GuillermoJimeenez

### More of my work

Did you like this class document? Check out **rho-class**, made for complex research articles.

    https://es.overleaf.com/latex/templates/rho-class-academic-article-template/bpgjxjjqhtfy

## Github repository

Visit the repository to access the source code, track ongoing development, report issues, and stay up to date with the latest changes.

    https://github.com/MemoJimenez/Tau-class

## Contact Me

Have questions, suggestions, or an idea for a new feature? Found a bug or working on a project you’d like to invite me to?  
Feel free to reach out — I’d be happy to help, collaborate, or fix the issue.  Your feedback helps me improve my templates!

- Instagram: memo.notess
- Email:     memo.notess1@gmail.com
- Website:   https://memonotess1.wixsite.com/memonotess

## Updates Log

### Version 1.0.0 (01/03/2024)

1. Launch of the first edition of tau-book class, made especially for academic articles and laboratory reports. 

### Version 2.0.0 (03/03/2024)

1. The table of contents has a new design.
2. Figure, table and code captions have a new style.

### Version 2.1.0 (04/03/2024)

1. All URLs have the same font format.
2. Corrections to the author "and" were made.
3. Package name changed from kappa.sty to tau.sty.

### Version 2.2.0 (15/03/2024)

1. Tau-book is dressed in midnight blue for title, sections, URLs, and more.
2. The 'abscontent' command was removed and the abstract was modified directly.
3. The title is now centered and lines have been removed for cleaner formatting.
4. New colors and formatting when inserting code for better appearance.

### Version 2.3.0 (08/04/2024)

1. Class name changed from tau-book to just tau. 
2. A new code for the abstract was created.
3. The abstract font was changed from italics to normal text keeping the keywords in italics.
4. Taublue color was changed.
5. San Serif font was added for title, abstract, sections, captions and environments.
6. The table of contents was redesigned for better visualization.
7. The new environment (tauenv) with customized title was included.
8. The appearance of the header was modified showing the title on the right or left depending on the page.
9. New packages were added to help Tikz perform better.
10. The pbalance package was added to balace the last two columns of the document (optional).
11. The style of the fancyfoot was changed by eliminating the lines that separated the information.
12. New code was added to define the space above and below in equations. 

### Version 2.3.1 (10/04/2024)

1. We say goodbye to tau.sty.
2. Introducing tauenvs package which includes the defined environments.
3. The packages that were in tau.sty were moved to the class document (tau.cls).

### Version 2.4.0 (14/05/2024)

1. The code of the title and abstract was modified for a better adjustment.
2. The title is now placed on the left by default, however, it can be changed in title preferences (see appendix for more information).
3. Titlepos, titlefont, authorfont, professorfont now define the title format for easy modification.
4. When the 'professor' is not declared, the title space is automatically adjusted.
5. Bug fixed when 'keywords' command is not declared.
6. The word “keywords” now begins with a capital letter.
7. The color command taublue was changed to 'taucolor'.
8. When a code is inserted and the package 'spanish' is declared, the caption code will say “Código”.
9. Footer information is automatically adjusted when a command is not declared.
10. The 'ftitle' command is now 'footinfo'.
11. The footer style of the first page is not shown on odd pages.
12. Pbalance package is disable by default, however, uncomment if is required in 'tau.cls'.

### Version 2.4.1 (22/05/2024)

1. Now all class files are placed in a single folder (tau-class).
2. New command ‘journalname’ to provide more information.
3. The environments now have a slightly new style.
4. New package (taubabel) added to make the translation of the document easier.
5. A frame was added when placing a code.

### Version 2.4.2 (26/07/2024)

1. The language boolean function has been removed from taubabel.sty and the language is now manually set in the main.tex to avoid confusion.
2. The graphics path option was added in tau.cls/packages for figures.

### Version 2.4.3 (01/09/2024)

1. Journalname has modified its font size to improve the visual appearance of the document.

### Version 2.4.4 (28/02/2025)

1. Added an arrow when there is a line break when a code is inserted.
2. Numbers in codes are now shown in blue to differentiate them.
3. Keywords are now shown in bold for codes.
4. The lstset for matlab language was removed for better integration.
5. The tabletext command will now display the text in italics.
6. Line numbers and ToC are disabled by default.

### Version 2.5.0 (01/01/2026)

A new year brings major improvements and new features to tau-class!

1. The 'journalname' command has been renamed to 'doctype' for improved clarity and semantic consistency.
2. The 'professor' command has been deleted and changed it to the 'dates' command.
3. The 'course' command has been removed due to structural changes in the footer layout.
4. New cross-reference commands have been implemented for figures, tables, code listings, and equations, with hyperlinks applied to both the label and the reference number. Additional commands are also provided in 'taubabel.sty' to configure the label language and style.
5. A new block called via the 'docinfo' command has been introduced. This block provides greater control over supplementary document data. This block is anchored at the bottom of the first column and works in conjunction with the 'thanks' command.
6. The abstract, keywords, and the new docinfo block are now generated automatically by \maketitle, thanks to the use of 'appto'. As a result, it is no longer necessary to place '\tauabstract' at the beginning of the document.
7. All section titles are now displayed in uppercase to ensure visual consistency across the document.
8. The footer design has been changed, returning to a similar design used in version 1.0.0 (01/03/2024).
9. All environments now feature a more modern design, while preserving their original visual identity.
10. The minted package has been added to provide enhanced code formatting and improved syntax highlighting.
11. The configuration of the listings package has been refined. It remains a fully supported alternative to minted.
12. A new command has been introduced for inline code formatting. This command provides a visual style distinct from both normal text and traditional verbatim, improving readability and presentation.
13. The 'numeric-comp' option has been enabled so that multiple references can appear in the same bracket.
14. The 'tauenvs.sty' package has been fully rewrote to optimize performance and improve environment styling.
15. All packages are now organized into clearly defined sections within 'tau.cls'. Packages not required for the core template have been commented out and moved to 'Optional-, extra- packages' section, helping to reduce compilation time.
16. The default 'sffamily' font has been changed from Helvetica to Fira Sans, providing a more modern and flexible appearance across the entire template.
17. The font used for code has been updated to Fira Mono, a widely adopted monospaced typeface in programming, improving readability and visual consistency.
18. The class source code has been optimized and cleaned up to enhance maintainability and provide better user experience.

#### Enjoy writing with tau-class :D
