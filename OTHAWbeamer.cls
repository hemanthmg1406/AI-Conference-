% Vorlage für LaTeX-Beamer nach dem Corporate Design der OTH Amberg-Weiden
% Autoren: Andreas Aßmuth, Matthias Söllner, Daniel Loebenberger
% Aktuelle Version: v0.02
% Stand: 09.01.2019
%
% Changelog:
%
% v0.03: Überarbeitung Titelfolie, Ausrichtung Information Fußzeile,
%        Positionierung Logos, Optionen lecture, tochead (09.01.2019)
% v0.02: Anpassung der Vorlage (14.08.2015)
% + Ermöglichung der Option "aspectratio=169" für Präsentationen mit Bildformat 16:9
%
% v0.01: Erstellung der Klassendatei (20.11.2013)
%

\ProvidesClass{OTHAWbeamer}[2019/01/09 v0.03 Vorlage Ostbayerische Technische Hochschule Amberg-Weiden]
%
\PassOptionsToPackage{ngerman}{babel}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}

\newif\if@lecture
\@lecturefalse

\newif\if@tochead
\@tocheadfalse

\DeclareOption{tochead}{%
    \@tocheadtrue
}

\DeclareOption{lecture}{%
    \@lecturetrue
}

\DeclareOption{notochead}{
  \@tocheadfalse
}

\ProcessOptions\relax


\LoadClass[xcolor=table, covered, hyperref={bookmarks}]{beamer}

\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage{babel}
\RequirePackage{graphicx}

\RequirePackage{tikz}
\RequirePackage{hyperref}

\newcommand*{\email}[1]{\def\insertemail{#1}}
\email{}

% Define \place{} command, defaulting to Kirchheim.
\newcommand*{\place}[1]{\def\insertplace{#1}}
\place{Amberg}


% Farbdefinitionen
\definecolor{schwarz}{RGB}{0,0,0}
\definecolor{weiss}{RGB}{255,255,255}

\definecolor{orange1}{RGB}{242,148,0}
\definecolor{orange2}{RGB}{248,187,107}
\definecolor{orange3}{RGB}{251,214,166}
\definecolor{orange4}{RGB}{254,240,222}

\definecolor{grau1}{RGB}{176,167,157}
\definecolor{grau2}{RGB}{203,196,190}
\definecolor{grau3}{RGB}{223,218,214}
\definecolor{grau4}{RGB}{243,241,239}

\definecolor{blau1}{RGB}{127,169,182}
\definecolor{blau2}{RGB}{171,198,207}
\definecolor{blau3}{RGB}{208,220,224}
\definecolor{blau4}{RGB}{238,242,243}

\definecolor{rot1}{RGB}{162,72,133}
\definecolor{rot2}{RGB}{192,137,174}
\definecolor{rot3}{RGB}{215,184,207}
\definecolor{rot4}{RGB}{240,229,237}

\definecolor{gruen1}{RGB}{120, 162, 110}
\definecolor{gruen2}{RGB}{172, 194, 160}
\definecolor{gruen3}{RGB}{205, 217, 196}
\definecolor{gruen4}{RGB}{237, 240, 233}

% Linken und rechten Rand setzen
\setbeamersize{text margin left=15pt, text margin right=15pt}

% Festlegung, welche Elemente in welchen Farben dargestellt werden sollen
\setbeamercolor*{title}{fg=schwarz, bg=weiss}
\setbeamercolor*{frametitle}{fg=schwarz, bg=weiss}
\setbeamercolor*{normal text}{fg=schwarz, bg=weiss}
\setbeamercolor*{alerted text}{fg=orange1, bg=weiss}
\setbeamercolor*{footline}{fg=weiss, bg=grau1}
\setbeamercolor*{structure}{fg=orange1}
\setbeamercolor*{example text}{fg=gruen1, bg=weiss}
\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamercolor*{block title}{use=structure, fg=weiss, bg=orange1}
\setbeamercolor*{block title alerted}{use=alerted text, fg=weiss, bg=rot1}
\setbeamercolor*{block title example}{use=example text, fg=weiss, bg=gruen1}
\setbeamercolor*{block body}{parent=normal text, use=block title, bg=orange4}
\setbeamercolor*{block body alerted}{parent=normal text, use=block title, bg=rot4}
\setbeamercolor*{block body example}{parent=normal text, use=block title, bg=gruen4}
\setbeamercolor*{button}{fg=weiss, bg=orange1}
% Festlegung der Schriftarten
\setbeamerfont{tiny structure}{series=\mdseries, size=\tiny}
\setbeamerfont{title}{series=\bfseries, size=\Large}
\setbeamerfont*{author}{series=\mdseries, size=\normalsize}
\setbeamerfont{frametitle}{series=\bfseries, size=\large}
\setbeamerfont{framesubtitle}{series=\mdseries, size=\normalsize}
\setbeamerfont*{footline}{series=\mdseries, size=\tiny}
\setbeamerfont*{date}{series=\mdseries, size=\footnotesize}
\setbeamerfont{block title}{series=\bfseries, size=\normalsize}

% Standardeinstellungen
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{section/subsections in toc}[ball]{}
\setbeamercolor{section in toc}{fg=schwarz, bg=weiss}
\setbeamercolor{subsection in toc}{fg=schwarz, bg=weiss}
\setbeamertemplate{headline}{}
\setbeamertemplate{navigation symbols}{}
\def\beamer@andinst{\quad}

\setlength\textwidth{\paperwidth}
\addtolength\textwidth{-30pt}

\newlength{\logowidth}
\setlength\logowidth{\paperwidth}
\addtolength\logowidth{-4.53cm}

\newlength{\titlewidth}
\setlength\titlewidth{\paperwidth}
\addtolength\titlewidth{-3.7cm}

\pgfdeclareimage[width=4.53cm]{titel-logo}{images/titel-logo.png}
\pgfdeclareimage[width=2.5cm]{folie-logo}{images/folie-logo.png}

\defbeamertemplate*{title page}{OTHAW}{%
  \begin{tikzpicture}[remember picture,overlay]
  \node[anchor=north east, inner sep=0,outer sep=0]   at (current page.north east){%
  \pgfuseimage{titel-logo}};
\end{tikzpicture}

  \par\vfill
  {\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle}
  \ifx\insertsubtitle\@empty\else\vskip0.25em%
    {\usebeamerfont{subtitle}\insertsubtitle\par}%
  \fi\par\vfill
  \begin{beamercolorbox}[sep=0pt]{author}
    {\usebeamerfont{author}\insertauthor}
    \ifx\insertinstitute\empty\else{\\\usebeamerfont{institute}\insertinstitute}\fi
    \ifx\insertemail\empty\else{\\\usebeamerfont{institute}\href{mailto:\insertemail}{\usebeamerfont{institute}\texttt{<\insertemail>}}}\fi
    \\[2em]
    \mbox{}{\insertplace, \insertdate}\\[1em]
    \mbox{}{\inserttitlegraphic}

  \end{beamercolorbox}
}

\defbeamertemplate*{footline}{OTHAW}{%
  \begin{beamercolorbox}[center,leftskip=15pt, rightskip=15pt, wd=\paperwidth, ht=0.54cm]{footline}
    \vspace{1.5ex}
    \tabular{@{}m{0.3\textwidth}m{0.3\textwidth}m{0.3\textwidth}@{}}
      \parbox{0.3\textwidth}{\raggedright
\usebeamerfont{footline}\insertshorttitle} &
\parbox{0.3\textwidth}{%
\usebeamerfont{footline}\hfill\if@lecture\else\insertshortauthor\fi\hfill\mbox{}}
&
\parbox{0.3\textwidth}{\raggedleft\usebeamerfont{footline}\insertframenumber
\hspace{.4cm}\mbox{}}
    \endtabular
  \end{beamercolorbox}
}

\defbeamertemplate*{footline}{title slide}{%
  \begin{beamercolorbox}[center,leftskip=15pt, rightskip=15pt, wd=\paperwidth, ht=0.54cm]{footline}
  \end{beamercolorbox}
}


\defbeamertemplate*{headline}{OTHAW}
{%
\begin{tikzpicture}[remember picture,overlay]
\node[anchor=north east, inner sep=0,outer
sep=0]   at (current page.north east){%
\pgfuseimage{folie-logo}};
\end{tikzpicture}
}

\defbeamertemplate*{frametitle}{OTHAW}{%
  \vskip.2cm
  \if@tochead%
  \vbox{%
    \tinyline{\hspace{.2cm}\insertsection\hfill}%
    \setbox\beamer@tempbox=\hbox{\insertsubsection}%
    \tinyline{\ifdim\wd\beamer@tempbox>1pt{\hspace{.2cm}\hskip2pt\raise1.9pt\hbox
         {\vrule width0.4pt height1.875ex\vrule width 5pt height0.4pt}}
         \hskip1pt\insertsubsection\fi\hfill}%
  }
  \vskip.3cm
  \fi
  \parbox[b]{\titlewidth}{%
    \usebeamerfont*{frametitle}\usebeamercolor{frametitle}\insertframetitle\newline
    \usebeamerfont*{framesubtitle}\insertframesubtitle}%
}

\setbeamertemplate{footline}[title slide]

\def\maketitle{%
  \ifbeamer@inframe\titlepage\else\frame{\titlepage}\fi%
  \setbeamertemplate{frametitle}[OTHAW]%
  \setbeamertemplate{footline}[OTHAW]
}


