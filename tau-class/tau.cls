%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
%  _____                      _               
% |_   _|_ _ _   _        ___| | __ _ ___ ___ 
%   | |/ _` | | | |_____ / __| |/ _` / __/ __|
%   | | (_| | |_| |_____| (__| | (_| \__ \__ \
%   |_|\__,_|\__,_|      \___|_|\__,_|___/___/
%
% LaTeX2e Class
% Version 2.6.0 (21/04/2026)
%
% Author: 
% Guillermo Jimenez (memo.notess1@gmail.com)
%
% License:
% Creative Commons CC BY 4.0
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% Github Repository:
% https://github.com/MemoJimenez/Tau-class
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% You may modify 'tau.cls' file according to your
% needs and preferences. This LaTeX2e class file defines 
% the document layout and behavior.
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------
% Class configuration
%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tau-class/tau}[21/04/2026 Tau LaTeX2e class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}
\AtEndOfClass{\RequirePackage{microtype}}

%----------------------------------------------------------
% Required packages
%----------------------------------------------------------

\RequirePackage{etoolbox}
\RequirePackage{ragged2e}
\RequirePackage{array} 
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{xifthen}
\RequirePackage{adjustbox}
\RequirePackage{iflang}
\RequirePackage{fontawesome} 
\RequirePackage{balance}

%----------------------------------------------------------
% Tau custom packages (location/name)
%----------------------------------------------------------

\RequirePackage{tau-class/tauenvs}
\RequirePackage{tau-class/taubabel}

%----------------------------------------------------------
% Optional-, extra- packages
%----------------------------------------------------------

% \RequirePackage[switch]{lineno}
% \RequirePackage{adforn}
% \RequirePackage{fontawesome5} 
% \RequirePackage{chemfig}      
% \RequirePackage{circuitikz} 
% \RequirePackage{matlab-prettifier}
% \RequirePackage{longtable}
% \RequirePackage{supertabular}
% \RequirePackage{setspace}
% \RequirePackage{lipsum}
% \RequirePackage{pbalance} 
% \RequirePackage{afterpage}
% \RequirePackage{sidecap}

%----------------------------------------------------------
% Fonts
%----------------------------------------------------------

\usepackage[T1]{fontenc}
\usepackage[notextcomp]{stix2}
\usepackage{FiraSans}
\usepackage[scaled=0.85]{FiraMono}

%----------------------------------------------------------
% Figures
%----------------------------------------------------------

\RequirePackage{graphicx}
\RequirePackage{here}
\RequirePackage{float}
\RequirePackage{stfloats} 

%----------------------------------------------------------
% Tables
%----------------------------------------------------------

\RequirePackage{adjustbox}
\RequirePackage{colortbl}
\RequirePackage{booktabs}
\RequirePackage[most,many]{tcolorbox}
\AtBeginEnvironment{tabular}{\small\sffamily}
\newcommand{\tabletext}[1]{{\fontsize{7}{9}\vskip2pt\sffamily\itshape\selectfont#1}}

%----------------------------------------------------------
% Geometry setup
%----------------------------------------------------------

\RequirePackage[
    left=1.25cm,
    right=1.25cm,
    top=2cm,
    bottom=2cm,
    headsep=0.75cm,
    % showframe
]{geometry}

%----------------------------------------------------------
% Equation above/below skip
%----------------------------------------------------------

\newlength{\eqskip}\setlength{\eqskip}{9pt}
\expandafter\def\expandafter\normalsize\expandafter{%
	\normalsize%
	\setlength\abovedisplayskip{\eqskip-\baselineskip}%
	\setlength\belowdisplayskip{\eqskip-\baselineskip}%
	\setlength\abovedisplayshortskip{\eqskip-\baselineskip}%
	\setlength\belowdisplayshortskip{\eqskip}%
}

%----------------------------------------------------------
% Color template
%----------------------------------------------------------

\RequirePackage{xcolor}
\definecolor{taucolor}{rgb}{0.0,0.2,0.4}       % Blue
% \definecolor{taucolor}{rgb}{0.12, 0.3, 0.17}   % Green
% \definecolor{taucolor}{rgb}{0.4, 0.26, 0.13}   % Brown

%----------------------------------------------------------
% URLs style
%----------------------------------------------------------

\RequirePackage{url}
\RequirePackage{xurl}
\renewcommand\UrlFont{\selectfont}

%----------------------------------------------------------
% Hyperref setup
%----------------------------------------------------------

\RequirePackage[colorlinks=true,allcolors=taucolor]{hyperref}
\RequirePackage{cleveref}
\RequirePackage{bookmark}

% New commands for figure-, table-, code- cross references
\newcommand{\figref}[1]{\hyperref[#1]{\figlabel\nobreakspace\ref*{#1}}}
\newcommand{\figsref}[1]{\hyperref[#1]{\figslabel\nobreakspace\ref*{#1}}}
\newcommand{\tabref}[1]{\hyperref[#1]{\tablabel\nobreakspace\ref*{#1}}}
\newcommand{\coderef}[1]{\hyperref[#1]{\captionlabelcode\nobreakspace\ref*{#1}}}
\newcommand{\equref}[1]{\hyperref[#1]{\eqlabel\nobreakspace\ref*{#1}}}

%----------------------------------------------------------
% Items
%----------------------------------------------------------

\RequirePackage{enumitem}
\setlist{noitemsep}

%----------------------------------------------------------
% Header and footer (first page)
%----------------------------------------------------------

\RequirePackage[bottom,hang,flushmargin,ragged]{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}

% Footer commands
\newcommand{\footerfont}{\normalfont\sffamily\fontsize{8}{9}\selectfont}
\newcommand{\organization}[1]{\def\@organization{#1}}
\newcommand{\footinfo}[1]{\def\@footinfo{#1}}
\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
\newcommand{\theday}[1]{\def\@theday{#1}}

% First page style
\fancypagestyle{firststyle}{
    \fancyhead[L]{}
    \fancyhead[C]{}
    \fancyhead[R]{}
    \fancyfoot[C]{}
    \fancyfoot[L]{}
    \fancyfoot[R]{
        {\ifx\@organization\undefined\else\footerfont\@organization\hspace{10pt}\fi}
        {\ifx\@theday\undefined\else\footerfont\bfseries\@theday\hspace{10pt}\fi}
        {\ifx\@footinfo\undefined\else\footerfont\@footinfo\hspace{10pt}\fi}
        \footerfont\textbf{\thepage}/\pageref{LastPage}
    }
}

%----------------------------------------------------------
% Header and footer
%----------------------------------------------------------

% Fancy head
\fancyhead[C]{}
\fancyhead[RE,LO]{\footerfont\@title}
\fancyhead[RO,LE]{}

% Fancy foot
\fancyfoot[C]{}
\fancyfoot[RE,LO]{\ifx\@leadauthor\undefined\else\footerfont\@leadauthor\fi}
\fancyfoot[RO]{
    {\ifx\@organization\undefined\else\footerfont\@organization\hspace{10pt}\fi}
    {\ifx\@theday\undefined\else\footerfont\bfseries\@theday\hspace{10pt}\fi}
    {\ifx\@footinfo\undefined\else\footerfont\@footinfo\hspace{10pt}\fi}
    \footerfont\bfseries\thepage
}
\fancyfoot[LE]{
    {\footerfont\textbf{\thepage}}
    {\ifx\@footinfo\undefined\else\footerfont\hspace{10pt}\@footinfo\fi}
}

% Head and foot rule
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%----------------------------------------------------------
% Taustart (lettrine)
%----------------------------------------------------------

\RequirePackage{lettrine}
\newcommand{\dropcapfont}{\color{taucolor}\bfseries}
\newcommand{\taustart}[1]{\lettrine[lines=2,lraise=0,findent=2pt, nindent=0em]{{\fontsize{26.5}{24}\dropcapfont{#1}}}{}}

%----------------------------------------------------------
% Abstract style
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

% Abstract definition
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
    \@ifundefined{@keywords}{\vskip0pt}{
        \vskip5pt
        \noindent
        \parbox{\dimexpr\linewidth}{
    	{
            \hspace*{1em}{\keywordsfont\keywordname\ignorespaces}{\keywordsfonttext\@keywords}
    	}
        }
        \vskip5pt
    } 
}

%----------------------------------------------------------
% Title style
%----------------------------------------------------------

\RequirePackage{titling}
\RequirePackage[explicit]{titlesec}

% Title commands
\newcommand{\dates}[1]{\def\@dates{#1}}
\newcommand{\doctype}[1]{\def\@doctype{#1}}
\newcommand{\titlefont}{\bfseries\color{taucolor}\fontsize{18}{22}\sffamily\selectfont}

\renewcommand{\@maketitle}{
    \bgroup
        {\ifx\@doctype\undefined\vskip-20pt\else\vskip-22pt\RaggedRight\sffamily\bfseries\@doctype\par\fi}
        {\RaggedRight\titlefont\@title\par\vskip8pt}
        {\normalsize\sffamily\RaggedRight\@author\par\vskip8pt}
        {\ifx\@dates\undefined\vskip14pt\else\fontsize{7pt}{8pt}\RaggedRight\sffamily\selectfont\@dates\par\vskip20pt\fi}
    \egroup
}

%----------------------------------------------------------
% Thanks-, docinfo-, custom setup
%----------------------------------------------------------

\newcommand{\docinfo}[1]{\def\@docinfo{#1}}
\let\@docinfo\@empty

\let\oldthanks\thanks
\renewcommand{\thanks}[1]{\oldthanks{\sffamily #1}}

\appto{\maketitle}{%
  \tauabstract
  %
  \ifx\@docinfo\@empty
    % Do nothing
  \else
    \insert\footins{%
      \ifx\@thanks\@empty
        \vskip0pt
      \else
        \vskip8pt
      \fi
      \footnotesize
      \parindent=0em
      \hangindent=0pt
      \hangafter=0
      \sffamily
      \@docinfo\par
    }%
  \fi
}

%----------------------------------------------------------
% Affiliation setup
%----------------------------------------------------------

\RequirePackage{authblk}

\setlength{\affilsep}{10pt}
\renewcommand\Authfont{\normalfont\sffamily\fontsize{9}{11}}
\renewcommand\Affilfont{\sffamily\itshape\fontsize{7.5}{9}\selectfont}
\renewcommand\AB@affilnote[1]{\textsuperscript{\sffamily#1}}
\renewcommand\AB@authnote[1]{\textsuperscript{\sffamily#1}}
% \renewcommand\AB@affilsepx{; \protect\Affilfont}

\renewcommand\Authand{\ignorespaces\andlanguage}
\renewcommand\Authands{\ignorespaces\andlanguage}

%----------------------------------------------------------
% Section-, subsection-, subsubsection-, paragraph-, style
%----------------------------------------------------------

\titleformat{\section}
    {\color{taucolor}\sffamily\large\bfseries}
    {\thesection.}
    {0.5em}
    {\MakeUppercase{#1}}
    []
  
\titleformat{name=\section,numberless}
    {\color{taucolor}\sffamily\large\bfseries}
    {}
    {0em}
    {\MakeUppercase{#1}}
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
% \titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{3pt}
% \titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{2pt}
% \titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}

%----------------------------------------------------------
% Table of Contents
%----------------------------------------------------------

\newlength{\tocsep} 
% Sets the indentation of the sections in the table of contents
\setlength\tocsep{1.5pc} 

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
% Figure-, Table-, Listings/Minted- caption style
%----------------------------------------------------------

\RequirePackage{caption}
\RequirePackage{subcaption}

% Figure
\captionsetup[figure]{format=plain, labelsep=period, textfont={small}, justification=centering, labelfont={small,bf,sf}}

% Table
\captionsetup*[table]{labelfont={small,bf,sf},textfont={small},position=below,aboveskip=0pt,labelsep=period}

% Listings and minted
\captionsetup[lstlisting]{font=small, labelfont={bf,sf}, aboveskip=0pt, belowskip=9pt, position=below, textfont=small, labelsep=period}
\renewcommand\lstlistingname{\captionlabelcode}
\renewcommand\lstlistlistingname{\captionlabelcode}

%----------------------------------------------------------
% Listings style
%----------------------------------------------------------

\RequirePackage{listings}
\newenvironment{code}{\captionsetup{type=lstlisting}}{}

% Defined colors for listings environment 

% Lovelace-like listings style
\definecolor{taucodeback}{RGB}{248, 248, 248}  
\definecolor{taucodecomment}{RGB}{135, 135, 135}
\definecolor{taucodekey}{RGB}{41, 56, 176}
\definecolor{taucodestring}{RGB}{184, 56, 56}
\definecolor{taugray}{RGB}{0.5, 0.5, 0.5}

% Tango-like listings style
% \definecolor{taucodeback}{RGB}{248, 248, 248}  
% \definecolor{taucodecomment}{RGB}{1, 136, 0}
% \definecolor{taucodekey}{RGB}{53, 53, 128}
% \definecolor{taucodestring}{RGB}{122, 36, 47}
% \definecolor{taugray}{RGB}{0.5, 0.5, 0.5}

% Listings style
\lstdefinestyle{taucoding}{
	backgroundcolor=\color{taucodeback},   
	commentstyle=\color{taucodecomment},
	keywordstyle=\color{taucodekey},
	numberstyle=\tiny\color{taugray},
	stringstyle=\color{taucodestring},
	basicstyle=\small\ttfamily, % \linespread{1.15}
	breakatwhitespace=false,        
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=none,		 
	numbersep=0pt,    	              
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2,
	aboveskip=12pt,
	belowskip=7pt,
	xrightmargin=3pt,
	xleftmargin=3.8pt,	   
	columns=fullflexible,
	rulecolor=\color{taugray},
	frame=single,
	postbreak=\mbox{\small\textcolor{taugray}{$\hookrightarrow$}\space}
}

\lstset{style=taucoding}

%----------------------------------------------------------
% Minted setup
%----------------------------------------------------------

\usepackage{minted}
\usemintedstyle{lovelace} % lovelace, tango, stata-light
\renewcommand{\theFancyVerbLine}{\scriptsize\textcolor{black}{\arabic{FancyVerbLine}}}
\definecolor{codeback}{RGB}{248, 248, 248} 
\setminted{
	frame=single,
	breaklines,
	numbersep=5pt,
	fontsize=\small,
	bgcolor=codeback,
}

%----------------------------------------------------------
% Inlinecode definition
%----------------------------------------------------------

\NewDocumentCommand{\inlinecode}{v}{%
  \tcbox[
	boxrule=0.4pt,          
	arc=1pt,                
	colback=gray!15,        
	colframe=gray!30,        
	coltext=taucolor,         
	left=1pt, right=1pt,    
	top=1pt, bottom=1pt,      
	boxsep=0pt,             
	fontupper=\ttfamily\small,
	valign=center,
    nobeforeafter,
    box align=base
  ]{#1}%
}

%----------------------------------------------------------
% BibLaTeX
%----------------------------------------------------------

\RequirePackage{csquotes}
\RequirePackage[
	backend=biber,
	style=ieee,
	sorting=ynt,
	citestyle=numeric-comp
]{biblatex}

\addbibresource{tau.bib}

%----------------------------------------------------------

\endinput