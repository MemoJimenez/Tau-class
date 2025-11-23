%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% Tau
% LaTeX Class
% Version 2.4.3 (01/09/2024)
%
% Author: 
% Guillermo Jimenez (memo.notess1@gmail.com)
%
% License:
% Creative Commons CC BY 4.0
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% You may modify 'tau.cls' file according to your
% needs and preferences. This LaTeX class file defines 
% the document layout and behavior.
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
%                        WARNING!
% --------------------------------------------------------
% It is important to proceed with caution and ensure that 
% any modifications made are compatible with LaTeX 
% syntax and conventions to avoid errors or unexpected 
% behavior in the document compilation process.
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------
% CLASS CONFIGURATION
%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tau-class/tau}[2024/09/01 Tau LaTeX class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass[twocolumn]{extarticle}
\AtEndOfClass{\RequirePackage{microtype}}

%----------------------------------------------------------
% REQUIRED PACKAGES
%----------------------------------------------------------

\RequirePackage[utf8]{inputenc}
\RequirePackage{etoolbox}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{titling}
\RequirePackage{lettrine}
\RequirePackage[switch]{lineno}
\RequirePackage[bottom,hang,flushmargin,ragged]{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage{xifthen}
\RequirePackage{adjustbox}
\RequirePackage{adforn}
\RequirePackage{lastpage}
\RequirePackage[explicit]{titlesec}
\RequirePackage{booktabs}
\RequirePackage{array} 
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage{iflang}
\RequirePackage{listings}
\RequirePackage{lipsum}
\RequirePackage{fontawesome5}    % For icons
\RequirePackage{chemfig}         % Chemical structures
\RequirePackage{circuitikz}      % Circuits schematics
\RequirePackage{supertabular}
\RequirePackage{matlab-prettifier}
\RequirePackage{listings}
\RequirePackage{csquotes}
\RequirePackage{ragged2e}
\RequirePackage{subcaption}
\RequirePackage{stfloats} 
% \RequirePackage{pbalance} 

%----------------------------------------------------------
% TAU CUSTOM PACKAGES (location/name)
%----------------------------------------------------------

\RequirePackage{tau-class/tauenvs}
\RequirePackage{tau-class/taubabel}

%----------------------------------------------------------
% PACKAGES FOR FIGURES
%----------------------------------------------------------

\usepackage{graphicx}
\RequirePackage{here}
\graphicspath{{figures/}{./}} 

%----------------------------------------------------------
% PACKAGES FOR TABLES
%----------------------------------------------------------

\usepackage{adjustbox}
\RequirePackage{colortbl}
\RequirePackage{tcolorbox}

%----------------------------------------------------------
% GEOMETRY PACKAGE SETUP
%----------------------------------------------------------

\RequirePackage[
    left=1.25cm,
    right=1.25cm,
    top=2cm,
    bottom=2cm,
    headsep=0.75cm
]{geometry}

%----------------------------------------------------------
% MATH PACKAGES
%----------------------------------------------------------

%!TEX In case of using another font that is not stix2 uncomment 'amssymb'

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
% \RequirePackage{amssymb}

% Equation skip value
\newlength{\eqskip}\setlength{\eqskip}{8pt}
\expandafter\def\expandafter\normalsize\expandafter{%
    \normalsize%
    \setlength\abovedisplayskip{\eqskip}%
    \setlength\belowdisplayskip{\eqskip}%
    \setlength\abovedisplayshortskip{\eqskip-\baselineskip}%
    \setlength\belowdisplayshortskip{\eqskip}%
}

%----------------------------------------------------------
% FONTS
%----------------------------------------------------------

\usepackage[notextcomp]{stix2}
\RequirePackage[scaled]{helvet}
\renewcommand{\ttdefault}{lmtt}

%----------------------------------------------------------
% URLs STYLE
%----------------------------------------------------------

\RequirePackage{url}
\RequirePackage{xurl}
\renewcommand\UrlFont{\selectfont}

%----------------------------------------------------------

\RequirePackage[colorlinks=true,allcolors=taucolor]{hyperref}
\RequirePackage{cleveref}
\RequirePackage{bookmark}

%----------------------------------------------------------
% ITEMS
%----------------------------------------------------------

\RequirePackage{enumitem}
\setlist{noitemsep}

%----------------------------------------------------------
% GRAPHICS PATH 
%----------------------------------------------------------

\setlength{\columnsep}{15pt}

%----------------------------------------------------------
% FIRST PAGE, HEADER AND FOOTER
%----------------------------------------------------------

% New commands
\newcommand{\footerfont}{\normalfont\sffamily\fontsize{7}{9}\selectfont}
\newcommand{\institution}[1]{\def\@institution{#1}}
\newcommand{\footinfo}[1]{\def\@footinfo{#1}}
\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
\newcommand{\course}[1]{\def\@course{#1}}
\newcommand{\theday}[1]{\def\@theday{#1}}
\pagestyle{fancy}

% Number style
\pagenumbering{arabic} % Roman

% First page style
\fancypagestyle{firststyle}{
    \fancyfoot[R]{
        {\ifx\@institution\undefined\else\footerfont\@institution\hspace{10pt}\fi}
        {\ifx\@theday\undefined\else\footerfont\bfseries\@theday\hspace{10pt}\fi}
        {\ifx\@footinfo\undefined\else\footerfont\@footinfo\hspace{10pt}\fi}
        \footerfont\textbf{\thepage\textendash\pageref{LastPage}}
    }
    \fancyfoot[L]{\ifx\@course\undefined\else\footerfont\@course\fi}
    \fancyhead[C]{}
    \fancyhead[R]{}
    \fancyhead[L]{}
}

% Fancy head
\fancyhead[C]{}
\fancyhead[RE]{\footerfont\itshape\@title}
\fancyhead[RO]{}
\fancyhead[LO]{\footerfont\itshape\@title}
\fancyhead[LE]{}

% Fancy foot
\fancyfoot[C]{}
\fancyfoot[LE]{\footerfont\textbf{\thepage}\hspace{10pt}\ifx\@course\undefined\else\@course\fi}
\fancyfoot[RO]{\footerfont\ifx\@course\undefined\else\@course\hspace{10pt}\fi\textbf{\thepage}}
\fancyfoot[RE,LO]{\footerfont\ifx\@leadauthor\undefined\else\itshape\@leadauthor\fi}

% Head and foot rule
\renewcommand{\headrulewidth}{0pt}      % No header rule
\renewcommand{\footrulewidth}{0pt}      % No footer rule

%----------------------------------------------------------
% TAU START ~ LETTRINE
%----------------------------------------------------------

\RequirePackage{lettrine}
\newcommand{\dropcapfont}{\color{taucolor}\bfseries\fontsize{26pt}{28pt}\selectfont}
\newcommand{\taustart}[1]{\lettrine[lines=2,lraise=0,findent=2pt, nindent=0em]{{\dropcapfont{#1}}}{}}

%----------------------------------------------------------
% ABSTRACT STYLE
%----------------------------------------------------------

% Abstract font
\newcommand{\absfont}{\selectfont\small\color{taucolor}\sffamily\bfseries}
% Abstract text font
\newcommand{\abstextfont}{\selectfont\sffamily\small}

% Keywords new command
\newcommand{\keywords}[1]{\def\@keywords{#1}}
% Keyword font
\newcommand{\keywordsfont}{\selectfont\small\color{taucolor}\sffamily\bfseries}
% Keyword text font 
\newcommand{\keywordsfonttext}{\selectfont\itshape\sffamily\small}

\def\xabstract{abstract}
\long\def\abstract#1\end#2{\def\two{#2}\ifx\two\xabstract 
    \long\gdef\theabstract{\ignorespaces#1}
    \def\go{\end{abstract}}
\else
    #1\end{#2}
    \gdef\theabstract{\vskip12pt
    \vskip12pt}
    \let\go\relax\fi
\go}

\newcommand{\tauabstract}{
    \noindent
    \parbox{\dimexpr\linewidth}{
	\vskip3pt
        \hspace*{1em}{\absfont\abstractname---}\abstextfont\theabstract
    }
    \@ifundefined{@keywords}{\vskip15pt}{
        \vskip6pt
        \noindent
        \parbox{\dimexpr\linewidth}{
    	{
            \hspace*{1em}{\keywordsfont\keywordname\ignorespaces}{\keywordsfonttext\@keywords}
    	}
        }
        \vskip12pt
    } 
}

%----------------------------------------------------------
% TITLE STYLE
%----------------------------------------------------------

% New commands
\newcommand{\journalname}[1]{\def\@journalname{#1}}
\newcommand{\professor}[1]{\def\@professor{#1}}
\newcommand{\titlepos}{\RaggedRight}
\newcommand{\titlefont}{\bfseries\color{taucolor}\fontsize{18}{22}\sffamily\selectfont}
\newcommand{\authorfont}{\normalsize\sffamily}
\newcommand{\professorfont}{\fontsize{7pt}{8pt}\selectfont}

\renewcommand{\@maketitle}{
    {\ifx\@journalname\undefined\vskip-18pt\else\vskip-25pt\RaggedRight\sffamily\bfseries\fontsize{8}{14}\@journalname\par\fi}
    {\titlepos\titlefont\@title\par\vskip8pt}
    {\authorfont\titlepos\@author\par\vskip8pt}
    {\ifx\@professor\undefined\vskip14pt\else\professorfont\titlepos\@professor\par\vskip22pt\fi}
}

%----------------------------------------------------------
% AFFILIATION SETUP
%----------------------------------------------------------

\RequirePackage{authblk} % For custom environment affiliation

\setlength{\affilsep}{9pt}
\renewcommand\Authfont{\normalfont\sffamily\bfseries\fontsize{9}{11}}
\renewcommand\Affilfont{\normalfont\itshape\fontsize{7.5}{9}}
% \renewcommand\AB@affilsepx{; \protect\Affilfont}
\renewcommand\Authands{\ignorespaces\andlanguage}
\renewcommand\Authand{\ignorespaces\andlanguage}

%----------------------------------------------------------
% SECTION STYLE
%----------------------------------------------------------

\setcounter{secnumdepth}{5}

\titleformat{\section}
    {\color{taucolor}\sffamily\large\bfseries}
    {\thesection.}
    {0.5em}
    {#1}
    []
  
\titleformat{name=\section,numberless}
    {\color{taucolor}\sffamily\large\bfseries}
    {}
    {0em}
    {#1}
    []  
  
\titleformat{\subsection}[block] % You may change it to "runin"
    {\bfseries\sffamily}
    {\thesubsection.}
    {0.5em}
    {#1}      % If using runin, change #1 to '#1. ' (space at the end)
    []
  
\titleformat{\subsubsection}[block] % You may change it to "runin"
    {\small\bfseries\sffamily\itshape}
    {\thesubsubsection.}
    {0.5em}
    {#1}      % If using runin, change #1 to '#1. ' (space at the end)
    []    
  
\titleformat{\paragraph}[runin]
    {\small\bfseries}
    {}
    {0em}
    {#1} 
  
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{2pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{2pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}

%----------------------------------------------------------
% TABLE OF CONTENTS
%----------------------------------------------------------

\newlength{\tocsep} 
\setlength\tocsep{1.5pc} % Sets the indentation of the sections in the table of contents
\setcounter{tocdepth}{5} % Three levels in the table of contents section: sections, subsections and subsubsections

\RequirePackage{titletoc}
\contentsmargin{0cm}

\titlecontents{section}[\tocsep]
    {\addvspace{4pt}\sffamily\selectfont\bfseries}
    {\contentslabel[\thecontentslabel]{\tocsep}}
    {}
    {\hfill\thecontentspage}
    []

\titlecontents{subsection}[3pc]
    {\addvspace{4pt}\small\sffamily\selectfont}
    {\contentslabel[\thecontentslabel]{\tocsep}}
    {}
    {\ \titlerule*[.5pc]{.}\ \thecontentspage}
    []

\titlecontents*{subsubsection}[3pc]
    {\footnotesize\sffamily\itshape\selectfont}
    {}
    {}
    {}
    [\ \textbullet\ ]

%----------------------------------------------------------
% FOOTNOTE STYLE
%----------------------------------------------------------

\definecolor{black50}{gray}{0.5}
\renewcommand*{\footnotelayout}{\normalfont\fontsize{6}{8}}
\renewcommand{\footnoterule}{
    \kern -3pt
    {\color{black50} \hrule width 72pt height 0.25pt}
    \kern 2.5pt
}
	
%----------------------------------------------------------
% FIGURE-, TABLE-, LISTINGS- CAPTION STYLE
%----------------------------------------------------------

% Figure
\captionsetup[figure]{format=plain, labelsep=period, textfont={small}, justification=centering, labelfont={small,bf,sf}}

% Table
\captionsetup*[table]{labelfont={small,bf,sf},textfont={small},skip=10pt,position=below,labelsep=period} % Change it to "above" if you prefer the caption above the table.
\newcommand{\tabletext}[1]{{\setlength{\leftskip}{9pt}\fontsize{7}{9}\vskip2pt\selectfont#1}}

\captionsetup[lstlisting]{font=small, labelfont={bf,sf}, belowskip=3pt, position=below, textfont=small, labelsep=period}
\renewcommand\lstlistingname{\captioncodelanguage}
\renewcommand\lstlistlistingname{\captioncodelanguage}

%----------------------------------------------------------
% LISTINGS STYLE
%----------------------------------------------------------

% Defined colors for listings environment
\definecolor{taucodeback}{RGB}{248, 248, 248}  
\definecolor{taucodecomment}{RGB}{1, 136, 0}
\definecolor{taucodekey}{RGB}{53, 53, 128}
\definecolor{taucodestring}{RGB}{122, 36, 47}
\definecolor{taugray}{RGB}{0.5,0.5,0.5}
\definecolor{tauredmatlab}{RGB}{199, 78, 0}

% General
\lstdefinestyle{taucoding}{
    backgroundcolor=\color{taucodeback},   
    commentstyle=\color{taucodecomment},
    keywordstyle=\color{taucodekey},
    numberstyle=\tiny\color{taugray},
    stringstyle=\color{taucodestring},
    basicstyle=\footnotesize\ttfamily,
    breakatwhitespace=false,        
    basicstyle=\small\ttfamily,
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,				 	% if "none" change the values  
    numbersep=8pt,    				% 0pt              
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    aboveskip=12pt,
    belowskip=8pt,
    xleftmargin=10pt,				% 0pt
    rulecolor=\color{taugray},
    frame=single
}

% Matlab
\lstset{
    language=Matlab,
    rulecolor=\color{taugray},
    emph=[1]{for,end,break},
    emphstyle=[1]\color{tauredmatlab},
}

\lstset{style=taucoding}

%----------------------------------------------------------
% BIBLATEX
%----------------------------------------------------------

\RequirePackage[
    backend=biber,
    style=ieee,
    sorting=ynt
]{biblatex}

\addbibresource{tau.bib}

%----------------------------------------------------------

\endinput