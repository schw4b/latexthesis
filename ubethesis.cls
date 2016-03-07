% \iffalse meta-comment
%
% Master class for the RVS research group at the University of Bern,
% Switzerland
%
% \fi
% Filename: rvsmaster.cls
% Author: Matthias Scheidegger
% Version: 0.01 2004/10/13
% Copyright 2004 Matthias Scheidegger.
% This is a LaTeX2e document class.

% Rewritten and adjusted for PhD Thesis template for the GHS, Univeristy of Bern.
% Filename: ubethesis.cls
% Author: Simon Schwab
% Version: 0.01 2013/03/11
% Copyright 2010 Simon Schawb.
% This is a LaTeX2e document class.
 
\NeedsTeXFormat{LaTeX2e}[1994/12/01]
%\ProvidesClass{rvsmaster}[2004/10/13 Extension LaTeX class]
\ProvidesClass{ubethesis}[2013/03/11 Extension LaTeX class]


% Default options

\ExecuteOptions{a4paper,10pt,oneside,onecolumn,final,openany}

% All options are passed to the report class.
 

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

% Font and series changes
\renewcommand\rmdefault{ptm}
\renewcommand\sfdefault{phv}
\renewcommand\ttdefault{pcr}
\renewcommand\bfdefault{b}

%% Title page
\renewcommand*{\title}[1]{\gdef\@title{#1}}
\renewcommand*{\author}[1]{\gdef\@author{#1}}
\newcommand*{\origin}[1]{\gdef\@origin{#1}}
\date{\number\year}
\newcommand*{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand*{\advaffilA}[1]{\gdef\@advaffilA{#1}}
\newcommand*{\advaffilB}[1]{\gdef\@advaffilB{#1}}
\newcommand*{\coadvisor}[1]{\gdef\@coadvisor{#1}}
\newcommand*{\coadvaffilA}[1]{\gdef\@coadvaffilA{#1}}
\newcommand*{\coadvaffilB}[1]{\gdef\@coadvaffilB{#1}}
\if@titlepage
\renewcommand\maketitle{\begin{titlepage}%
  \hspace*{120mm}\includegraphics[width=45mm]{ublogo}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 10\p@
  \begin{center}%
	{\LARGE\textsf{Graduate School for Health Sciences\\University of Bern}\par}%
  	\vskip 2em%
  	{\huge\textsf{\textsc{\textbf{\@title}}}\par}%
  	\vskip 2em%
  	{\Large\textsf{PhD Thesis submitted by}\par}%
  	\vskip 1em%
  	{\LARGE\textsf{\textsc{\textbf{\@author}}}\par}%
        \vskip 1em%
  	{\Large\textsf{from \textbf{\@origin}}\par}%
        \vskip 1em%
        {\Large\textsf{for the degree of\\ \vskip 0.5em \LARGE PhD in Health Sciences (Neurosciences)}\par}%
  	\vskip 2em%
  	{\large\textsf{Thesis advisor}\par}%
  	{\Large\textsf{\@advisor}\par}%
  	{\large\textsf{\@advaffilA}\par}%
  	{\large\textsf{\@advaffilB}\par}%
        \vskip 1em%
        {\large\textsf{Thesis co-advisor}\par}%
        {\Large\textsf{\@coadvisor}\par}%
        {\large\textsf{\@coadvaffilA}\par}%
        {\large\textsf{\@coadvaffilB}\par}%

  \end{center}\par	
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\fi

%% Chapter and section headings
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \LARGE\sffamily \@chapapp\space \thechapter
      \par\nobreak
      \vskip 10\p@
      \hrule
      \vskip 13\p@
    \fi
    \interlinepenalty\@M
    \huge \bfseries #1\par\nobreak
    \vskip 40\p@
}}

\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \huge \sffamily\bfseries #1\par\nobreak
    \vskip 40\p@
}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\sffamily}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\sffamily}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                        {-3.25ex\@plus -1ex \@minus -.2ex}%
                                        {1.5ex \@plus .2ex}%
                                        {\normalfont\normalsize\sffamily}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {-3.25ex\@plus -1ex \@minus -.2ex}%
                                    {1.5ex \@plus .2ex}%
                                    {\normalfont\normalsize\sffamily}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\z@}%
                                       {3.25ex \@plus1ex \@minus.2ex}%
                                       {-1em}%
                                       {\normalfont\normalsize\sffamily}}

%% Abstract
\if@titlepage
  \renewenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \sffamily \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \renewenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\sffamily \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\sffamily #1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
