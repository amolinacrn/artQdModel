%---------------------------------------------------------------------------
%Please  be  aware that the use of this LaTeX class file is governed by the
%following conditions:
%
% based on the original LaTeX ARTICLE DOCUMENT STYLE
% Copyright (C) 1988, 1989 by Leslie Lamport
%
% Copyright (c) 2007 John Wiley & Sons, Ltd, The Atrium, Southern Gate, Chichester,
% West Sussex, PO19 8SQ UK.   All rights reserved.
%
% Rules of Use
%
% You are NOT ALLOWED to change this file.
%
%This class file is made available for use by authors who wish to prepare an
%article for publication in the
%Quarterly Journal of the Royal Meteorological Society
%published by John Wiley & Sons Ltd.  The user may not exploit any part of
%the class file commercially.
%
%This class file is provided on an `as is'  basis, without warranties of any
%kind, either expressed or implied, including but not limited to warranties of
%title,   or  implied  warranties  of  merchantablility  or  fitness  for  a
%particular purpose.  There will be no duty on the author[s] of the software
%or  John Wiley & Sons Ltd to correct any errors or defects in the software.
%Any  statutory  rights you may have remain unaffected by your acceptance of
%these rules of use.
%---------------------------------------------------------------------------
%
% Created by Alistair Smith, Sunrise Setting Ltd, 30 July 2010
%
% 14/10/10 Small change to work with BibTeX
% 18/5/11 Minor style changes.
% 4/10/13 Font sizes and margin changes, plus other minire style changes. 
%
% qjrms4.cls --- For Q. J. R. Meteorol. Soc

\def\update{2013/10/14 v1.1}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qjrms4}[\update\ Q. J. R. Meteorol. Soc]

\newif\if@timesfont
\DeclareOption{times}{%
\@timesfonttrue}

\newif\if@doublespace
\DeclareOption{doublespace}{%
\@doublespacetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\if@timesfont
\RequirePackage{times}
\fi
\if@doublespace
\RequirePackage[doublespacing]{setspace}
\fi

\RequirePackage{graphicx}
\RequirePackage{pifont,latexsym,ifthen,theorem,rotating,calc,textcase,booktabs,color}
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath}
\RequirePackage[errorshow]{tracefnt}
\usepackage{hyperref}%esto es para celorear referencias de todo

%\usepackage{natbib}
%\bibpunct{(}{)}{;}{}{}{,}

\@twosidetrue
\flushbottom
\frenchspacing
\usepackage[left=1.7cm,top=2.2cm,right=1.7cm,bottom=2cm]{geometry}
%papersize={width,height}
\usepackage[text={179mm,268mm},%
papersize={210mm,297mm},%
columnsep=4mm,%
headsep=29pt,%
centering]{}

\headheight 19pt
\parindent 1em
\footskip 18pt

\hyphenpenalty=1000
\pretolerance=8000
\tolerance=9500
\hbadness=8000
\vbadness=9000
\displaywidowpenalty=0
\clubpenalty=10000
\widowpenalty=10000
\lefthyphenmin=3%
\righthyphenmin=3%
\brokenpenalty=10000%
\hbadness=10000
\vbadness=10000

\thinmuskip = 3mu
\medmuskip = 4mu
\thickmuskip = 5mu

\setcounter{topnumber}{5}
\def\topfraction{1}
\setcounter{bottomnumber}{5}
\def\bottomfraction{.8}
\setcounter{totalnumber}{10}
\def\textfraction{0}
\renewcommand{\floatpagefraction}{0.95}
\renewcommand{\dblfloatpagefraction}{0.95}
\renewcommand{\dbltopfraction}{1}

%\newcommand{\abssize}{\fontsize{10.0}{10pt}\selectfont}

\renewcommand\normalsize{%
\fontsize{10pt}{11.5pt}\selectfont%//para cambiar tamano de letra################HOla aqiu###
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
   
   
\normalsize
\renewcommand\small{%
\fontsize{8.5}{9.5pt plus 0.10pt minus 0.10pt}\selectfont%
   %\@setfontsize\small\@xpt{11pt plus 0.10pt minus 0.10pt}
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
\fontsize{7.5}{8.5}\selectfont%
   %\@setfontsize\footnotesize\@viiipt{9}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand{\scriptsize}{\fontsize{7.0}{8.5pt}\selectfont}
\renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
%\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\renewcommand{\large}{\fontsize{12.5}{15pt}\selectfont}
\newcommand{\refsize}{\fontsize{8.0}{9.5pt}\selectfont}
\newcommand{\rhsize}{\fontsize{11.0}{13pt}\selectfont}
\newcommand{\titlesize}{\fontsize{17.8}{19.5pt}\selectfont}
\newcommand{\abssize}{\fontsize{9.5}{10.5pt}\selectfont}
\def\texnegrita{\abssize}
\def\journalname{}
\def\journalabb{}

\def\address#1{\gdef\@address{#1}}
%###########################################
\usepackage{helvet}
\linespread{1.05}                                  % Fuente Palatino necesita espaciado
\usepackage[full]{textcomp}                        % Caracteres especiales como ' (recto)
\usepackage{xcolor}
 \definecolor{colortitulo}{RGB}{11,17,79} % 
    \definecolor{colordominante}{RGB}{11,17,79}
    \definecolor{colordominanteF}{RGB}{219,68,14}
    \definecolor{colordominanteD}{RGB}{137,46,55}
    \definecolor{mostaza}{RGB}{231,196,25}
    \definecolor{amarilloM}{RGB}{248,199,90}
    \definecolor{amarilloD}{cmyk}{0,0,0.2,0}
    \definecolor{azulF}{rgb}{.0,.0,.3}
    \definecolor{grisD}{rgb}{.3,.3,.3}
    \definecolor{grisF}{rgb}{.6,.6,.6}
    \definecolor{grisamarillo}{RGB}{248,248,245} 
    \definecolor{miverde}{RGB}{44,162,67}
    \definecolor{verdep}{RGB}{166,206,58}
    \definecolor{verdencabezado}{RGB}{166,206,58}
    \definecolor{verdeF}{RGB}{5,92,8}
    \colorlet{mygray}{black!20}
    \newcommand{\verde}{\color{miverde}}
    \definecolor{gris}{gray}{0.7}
    \definecolor{azulado}{rgb}{0.2,0.5,0.7}
% Fin COLORES personales-------------------------------------------------
\usepackage{pstricks}
\usepackage{xparse}
\usepackage{tcolorbox} 
\tcbuselibrary{skins,breakable}                    % Librerías tcolorbox
\usepackage{tikz,tkz-tab}% Cajas de Teoremas, ejemplos, etc.
\usetikzlibrary{positioning,shadows,backgrounds,calc}%
\usepackage{tikzpagenodes}
\usepackage{xargs}                                 % Comandos con opciones
\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\usepackage{multicol}
% %\usepackage{epstopdf}% Conversión - Miktes 2.9 o inferior, TexLive 2009. o inferior
\usepackage[small,bf]{caption}
%\usepackage[breaklinks,colorlinks=true, pdfstartview=FitV, linkcolor=black, citecolor=black, urlcolor=black]{hyperref}
\usepackage{amsmath,amssymb,amsfonts,latexsym,cancel,stmaryrd}%
%\usepackage[ruled,,vlined,lined,linesnumbered,algochapter]{algorithm2e}
\newtcolorbox{wwbox}[1][]{%
arc=0mm,breakable,
enhanced,colback=gris,
boxrule=0pt,
top=0cm, %Separación vertical - inicia texto
bottom=0cm,
left=-0.08cm,
right=0cm,
enlarge top by= 0.5ex,
enlarge bottom by=2ex,
%enlarge top by=0cm,
%enlarge top at break by=0mm,pad at break=1mm,
fontupper=\normalsize,
%step and label={tcbca}{#3},
%Borde
overlay unbroken={\draw[color=amarilloD,line width=0.5pt] (frame.north west)
  --([xshift=0pt]frame.north east)
  --([xshift=0pt]frame.south east)
  --([xshift=0pt]frame.south west)--(frame.north west);
        },
%Borde
overlay first={\draw[color=amarilloD,line width=0.5pt] (frame.north west)
  --([xshift=0pt]frame.north east)
  --([xshift=0pt]frame.south east)
  --([xshift=0pt]frame.south west)--(frame.north west);
        },
%Borde cambio de página
overlay last={\draw[color=amarilloD,line width=0.5pt] (frame.north west)
  --([xshift=0pt]frame.north east)
  --([xshift=0pt]frame.south east)
  --([xshift=0pt]frame.south west)--(frame.north west);}
#1}

 \newenvironment{scaja}[1][]{\bigskip\begin{wwbox}%
 #1}{\end{wwbox}}
%###########################################
\newbox\absbox%se define resumen en espanol##############
\def\abstract{\lrbox\absbox\minipage{150mm}%
  \abssize%\bfseries%negrilla
  }
\def\endabstract{\endminipage\endlrbox}

\newbox\absboxeng%se define resumen en ingles#############
\def\engabstract{\lrbox\absboxeng\minipage{150mm}%
  \abssize%\bfseries%negrilla
  }
\def\endengabstract{\endminipage\endlrbox}

%%se define titulo de articulo pero en ingles $###############
\newbox\engtitle
\def\engtitle{\lrbox\engtitle\minipage{150mm}%
  \abssize%\bfseries%negrilla
  }
\def\endengtitle{\endminipage\endlrbox}

\def\keywords#1{%
  \gdef\@keywords{%
    \noindent\emph{\small\sffamily\bfseries\selectfont\textup{Palabras clave:}}\hspace*{.5em}\ignorespaces#1}}
\let\@keywords\@empty

\def\keywordseng#1{%
  \gdef\@keywordseng{%
    \noindent\emph{\small\sffamily\bfseries\selectfont\textup{Key words:}}\hspace*{0.5em}\ignorespaces#1}}
\let\@keywordseng\@empty
\usepackage{multirow}
\usepackage{colortbl}

%%###########################################
\def\received#1{%
\gdef\@received{\noindent Recibido #1}}
\let\@received\@empty

\def\revised#1{%
\gdef\@revised{\noindent Revised #1}}
\let\@revised\@empty

\def\accepted#1{%
\gdef\@accepted{\noindent Aceptado #1}}
\let\@accepted\@empty

\def\email#1{%
\gdef\@email{\noindent  malejo }}
\let\@email\@empty
%%###########################################

\setlength{\skip\footins}{17pt}
%\renewcommand{\footnoterule}{\rule{0pc}{0pt}}
\def\footnoterule{\kern-3\p@
  \hrule \@width 60pt \kern 2.6\p@}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\long\def\@makefntext#1{\parindent 1em%
\noindent{$\m@th^{\@thefnmark}$}#1}

\def\corraddr#1{%
  \gdef\@corraddr{%
   {$^{*}$Correspondence to: #1}}}
\let\@corraddr\@empty
\def\corrauth{$^{*}$}

\def\affilnum#1{${}^{\text{\normalfont#1}}$}
\def\affil#1{${}^{\text{\normalfont#1}}$}
\def\comma{$^{\text{,}}$}

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}\label{FirstPage}%\@corraddr
  \endgroup
  %\setcounter{footnote}{0}%
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\corraddr\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \null
  \if@doublespace
\vskip 0pt
\else  
\vskip -1.4cm %baja o sube todo el encabezado del articulo
\def\gris{color[gray]{0.7}}
\begin{tabular}{p{8cm}p{4.4cm}p{3.9cm}}
\cmidrule[1pt](l){3-3}\addlinespace[0cm]
&&
\multirow{2}{4.1cm}[0.5mm]{\Large\sffamily\bfseries\selectfont{U}\large\sffamily\bfseries\selectfont{DENAR}-\Large\sffamily\bfseries\selectfont{P}\large\sffamily\bfseries\selectfont{ASTO}
 \Large\sffamily\bfseries\selectfont{C}\large\sffamily\bfseries\selectfont{IENCIAS} \Large\sffamily\bfseries\selectfont{F}\large\sffamily\bfseries\selectfont{\'ISICAS}}\\
&&\\
\cmidrule[1pt]{1-3}\addlinespace[-0.1cm]
\cellcolor[gray]{0.78}&&\\
\cellcolor[gray]{0.78}\multirow{2}{8cm}[4mm]{\rmfamily\bfseries\selectfont{Art\'iculo - F\'isica Experimental}}&\\
\end{tabular} 
\vskip 1cm
  %\vskip 2cm %baja o sube todo el encabezado del articulo
\fi
%\rule{\textwidth}{1.0pt}
 %
  \vskip 2pt
    {\LARGE\sffamily\bfseries\selectfont \@title \par}%
    \vskip 0.5em%//baja testo en donde estas los nombres de autores
    {\large
      \lineskip .5em%
     \@author
      \par} 
      \begin{center}%
      \vskip -3.0em%%baja o sube texto de resumen
 {\normalsize
      \lineskip .5em%
      %
        {\emph\@address}
      \par}
      %\vskip -6pt
      {\@corraddr}
      % 
    \vskip 6pt
 %\rule{\textwidth}{1.0pt}    
    \vskip 17pt%
    {\usebox\absbox\par}%
    \begin{minipage}{150mm}
   {\lineskip .5em%
   \vskip 0.8em
      {\small\@keywords}
      \par}
  \vskip 7pt
  {\lineskip .5em%
    % {\small\emph{\@received\@revised\@accepted}}
      \par}
  \vskip 7pt
  \end{minipage}
  \vskip 0.5em%%para subir o bajar el resumen en ingles
 {\usebox\absboxeng\par}
  \begin{minipage}{150mm}
   {\lineskip .5em%
   \vskip 0.8em
      {\small\@keywordseng}
      \par}
  \vskip 7pt
  {\lineskip .5em%
     {\small\emph{\@received\@revised\@accepted}}
      \par}
  \vskip 7pt
  \end{minipage}
      \end{center}\par
  \vskip 1.5em}
  
\def\startpage{\pageref{FirstPage}}
\def\endpage{\pageref{LastPage}}
\def\volumeyear{0000}
\def\volumenumber{}
\def\DOI{qj.000}

\gdef\copyrightline{}
\def\runningheads#1#2{\markboth{{#1}}{{#2}}}
\definecolor{QJGray}{gray}{0.78}
\def\ps@title{\setlength{\fboxsep}{0pt}%
\def\@oddhead{\parbox[t]{\textwidth}{%
\noindent\colorbox{white}{\parbox{\textwidth}{\mbox{}\\[0mm]%
\noindent\small\bfseries\hfill%
\emph{\journalabb} }}}}%
\let\@evenhead\@oddhead
\def\@oddfoot{\parbox[t]{\textwidth}{%
\noindent\parbox{\columnwidth}{\footnotesize\mbox{}\hfill\copyrightline\hfill\mbox{}}\hfill\mbox{}%\\
\noindent\parbox{\columnwidth}{\footnotesize\mbox{}\hfill\textit{}\hfill\mbox{}}\hfill\mbox{}}%
}}

\def\ps@qjrms{\setlength{\fboxsep}{0mm}%
\def\@evenhead{\parbox[t]{\textwidth}{%
\noindent\colorbox{QJGray}{\parbox{\textwidth}{\mbox{}\\[0cm]%
\noindent{\rhsize\small\sffamily\selectfont\thepage\hfill\leftmark\hfill\phantom{\thepage}}\\[-0.2cm]}}}}
\def\@oddhead{\parbox[t]{\textwidth}{%
\noindent\colorbox{QJGray}{\parbox{\textwidth}{\mbox{}\\[0mm]%
\noindent{\rhsize\small\sffamily\selectfont\phantom{\thepage}\hfill\rightmark\hfill\thepage}\\[-0.2cm]}}}}
\def\@evenfoot{\parbox[t]{\textwidth}{%
\noindent\parbox{\columnwidth}{\footnotesize\mbox{}\hfill\copyrightline\hfill\mbox{}}\hfill%
\noindent\parbox{\columnwidth}{\footnotesize\mbox{}\hfill\emph{}\hfill\mbox{}}}}%
\def\@oddfoot{\@evenfoot}}

\let\@hangfrom\noindent %Remove indent on section turnovers
\renewcommand{\@seccntformat}[1]{{\csname the#1\endcsname.}\hspace{1.0em}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-12pt \@plus -6pt \@minus -4pt}%
                                   {10pt \@plus2pt \@minus 2pt}%
                                   {\normalsize\sffamily\bfseries\selectfont}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-12pt \@plus -6pt \@minus -4pt}%
                                     {10pt \@plus2pt \@minus 2pt}%
                                     {\normalsize\sffamily\bfseries\selectfont}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-12pt \@plus -6pt \@minus -4pt}%
                                     {10pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize\raggedright\itshape}}

\def\enumerate{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\itemsep 0pt\parsep 0pt
         \def\makelabel##1{\hss\llap{##1}}}\fi}

\let\endenumerate =\endlist

\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
\list{\csname\@itemitem\endcsname}{\itemsep 0pt\parsep 0pt
\def\makelabel##1{\hss\llap{##1}}}\fi}

\let\enditemize =\endlist
%\usepackage[labelfont=up]{caption}

%\usepackage{caption}
%\DeclareCaptionFont{refsize}{\refsize}
%\DeclareCaptionLabelSeparator{jwperiod}{.\hspace*{0.55ex}}
%\captionsetup[figure]{labelfont=bf,labelsep=jwperiod,justification=justified,singlelinecheck=true}
%\captionsetup[table]{position=top,labelfont=bf,labelsep=jwperiod,justification=justified,singlelinecheck=true}


\RequirePackage[labelfont={bf,rm,small},labelsep=period,justification=justified]{caption}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}

%\sffamily\bfseries\selectfont
\newcommand\ack{\section*{Acknowledgement}}
\newcommand\acks{\section*{Acknowledgements}}


\hyphenation{never-the-less}
\hyphenation{atmos-phere atmos-pheric}
\hyphenation{fila-ment}
\hyphenation{kin-etic}
\hyphenation{meso-scale}
\hyphenation{micro-wave}
\hyphenation{par-ameter parame-trize}
\hyphenation{plan-etary}
\hyphenation{spheri-cal}
\hyphenation{reas-on reas-ons}
\hyphenation{for-mula for-mulae for-mulas}
\hyphenation{meteorol}
\hyphenation{thermo-dynamics thermo-dynamic}
\hyphenation{follows}
\hyphenation{radi-ation}
\hyphenation{per-iph-ery}
\hyphenation{meteor-ology meteoro-logi-cal meteor-ol-ogist}
\hyphenation{other-wise}
\hyphenation{down-slope}
\hyphenation{wave-guide wave-guides}
\hyphenation{extra-tropical}

\AtEndDocument{%
\label{LastPage}}

\newcommand\re{\mbox{\rm e}}
\newcommand\rd{\mbox{\rm d}}
\newcommand\en{\phantom{0}}
\newcommand\etal{\emph{et~al.}}

\pagestyle{qjrms}
\twocolumn
\normalsize
\sloppy
\received{\dots}



%%%%%%%%%%%%%%%%
% BIBLIOGRAFIA %
%%%%%%%%%%%%%%%%


\def\thebibliography#1{
  \addcontentsline{toc}{chapter}{\hspace{0.47cm} BIBLIOGRAF\'IA}
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .15em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}



\def\endthebibliography{%
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
  \endlist}
 %%######################################################################## 
 %%#################### NUEVAS DEFINICIONES ###############################
 %%########################################################################




