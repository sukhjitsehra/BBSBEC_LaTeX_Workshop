% The .tex file designed by Dr. Hardepp Singh Rai, (Dean, Testing and Consultancy, Guru Nanak Dev Engineering College, Ludhiana, Punjab), Dr. Jaiteg Singh Khaira (Professr, Chitakara Unviersity, Punjab) and Er. Sukhjit Singh Sehra(Asst Prof, Guru Nanak Dev Engineering College, Ludhiana, Punjab). It has been specifically designed for Students of PG and PhD Scholars of Chitkara University. 
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2016/22/02 v1.0 LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\monthyear{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\doublespacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5cm}  % left margin
                        { 1cm}  % top margin
                        { 1cm}  % right margin
                        { 1cm}  % bottom margin
                        {  20pt}  % head height
                        {0.25cm}  % head sep
                        {   10pt}  % foot height
                        { 0.3cm}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\renewcommand{\subsectionmark}[1]{}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
%\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={blue},urlcolor={black},
   pdfstartview={FitH},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space}

%========================DON'T CHANGE THIS TEXT==================================
\newcommand*{\topic}[1]{\def\topicname{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\degree}[1]{\def\degreename{\textbf{{#1}}}}
\newcommand*{\guides}[1]{\def\guidenames{#1}}
\newcommand*{\guidedesignation}[1]{\def\designationname{#1}}
\newcommand*{\guidedeaprtment}[1]{\def\guidedepartmentname{#1}}
\newcommand*{\student}[1]{\def\studentname{#1}}
\newcommand*{\uniroll}[1]{\def\uniroll{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\university}[2]{\def\univname{{\Large{\bf{#1}}\\}{\Large{#2}\par}}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\college}[3]{\def\collname{{\LARGE{\bf{#1}}\\}{\Huge{#2}\\}{\LARGE{#3}\\}}}
                
%========================TITLE PAGE 1===========================================
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\topicname}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\studentname}
  \thispagestyle{empty}
  \begin{titlepage}  
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \begin{center}
        \setlength\fboxrule{1pt}\setlength\fboxsep{3mm}
     {\Huge \textbf{\sc \topicname} }
        \vskip 3mm
       {\Large \bfseries{ \scshape{\subjectname}} \par}
        \vskip 3mm
     {\normalsize  {SUBMITTED IN PARTIAL FULFILLMENT REQUIREMENT FOR THE AWARD OF THE DEGREE OF } \par}
 \vskip 2.5mm
       {\large \bfseries{ \scshape{\degreename}} \\}
    {\large {\sc (\deptname)} \par}
        \vskip 3mm
      {\large {\sc SUBMITTED BY}\\}
        {\large \textbf{\sc \studentname} \\}
          {\normalsize  {\sc (UNIVERSITY ROLL No. \sc \uniroll) } \\}
          \vskip 3mm
         {\large {\sc SUPERVISED BY}\\}
         {\large \textbf{\sc \guidenames} \\}
         {\normalsize  {\sc \designationname} \\
         {\normalsize {\textsc \guidedepartmentname}}
         }
        \vskip 3mm 
      {\Large \sc{\@date} }
        \vskip 4mm
        \begin{figure}[!h] \centering 
            \includegraphics[width=5cm]{./images/Chitkara.jpg} 
        \end{figure} 
                \vskip 2mm
  {\Large {\univname} \par}
    \end{center}
    \par
    \@thanks
    \vfil\null
  \cleardoublepage
  \end{titlepage}
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
  \clearpage}

%========================TITLE PAGE 2===========================
\newcommand\maketitlepagetwo{ \btypeout{Title Page}
  \hypersetup{pdftitle={\topicname}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\studentname}
  \thispagestyle{empty}
  \begin{titlepage}  
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \begin{center}
        \setlength\fboxrule{1pt}\setlength\fboxsep{3mm}
     {\Huge \textbf{\sc \topicname} }
        \vskip 3mm
       {\Large \bfseries{ \scshape{\subjectname}} \par}
        \vskip 3mm
     {\normalsize  {SUBMITTED IN PARTIAL FULFILLMENT REQUIREMENT FOR THE AWARD OF THE DEGREE OF } \par}
 \vskip 2.5mm
       {\large \bfseries{ \scshape{\degreename}} \\}
    {\large {\sc (\deptname)} \par}
        \vskip 3mm
      {\large {\sc SUBMITTED BY}\\}
        {\large \textbf{\sc \studentname} \\}
          {\normalsize  {\sc (UNIVERSITY ROLL No. \sc \uniroll) } \\}
          \vskip 3mm
         {\large {\sc SUPERVISED BY}\\}
         {\large \textbf{\sc \guidenames} \\}
         {\normalsize  {\sc \designationname} \\
         {\normalsize {\textsc \guidedepartmentname}}
         }
        \vskip 3mm 
      {\Large \sc{\@date} }
        \vskip 4mm
        \begin{figure}[!h] \centering 
            \includegraphics[width=5cm]{./images/Chitkara.jpg} 
        \end{figure} 
                \vskip 2mm
  {\Large {\univname} \par}
    \end{center}
    \par
    \@thanks
    \vfil\null
  \cleardoublepage
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitlepagetwo\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \clearpage}
%=========================CONTENTS==============================================
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand{\contentsname}{TABLE OF CONTENTS}

\renewcommand\tableofcontents{
\btypeout{tableofcontents}
\begin{spacing}{1.1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\centerline{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}}
           \rule{48em}{0.5pt}\\[6pt]
\textbf{Contents}\hfill\textbf{Page No.}\\
\rule{48em}{0.5pt}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage}
\end{spacing}}
%=========================FIGURE LIST===========================================
\addtocontents{lof}{\protect\renewcommand*\protect\addvspace[1]{}}
\renewcommand\listoffigures{
\btypeout{LIST OF FIGURES}
%\addtotoc{LIST OF FIGURES}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\begin{spacing}{1.3}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\centerline{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}}
              \rule{50em}{0.5pt}\\[6pt]
\textbf{Figure No.}\hfill\textbf{Figure Description}\hfill\textbf{Page No.}\\
\rule{50em}{0.5pt}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage}
\end{spacing}}
%=========================TABLE LIST===========================================
\addtocontents{lot}{\protect\renewcommand*\protect\addvspace[1]{}}
\renewcommand\listoftables{
\btypeout{LIST OF TABLES}
%\addtotoc{LIST OF TABLES}
\renewcommand{\listtablename}{LIST OF TABLES}
\begin{spacing}{1.3}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\centerline{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}}
          \rule{50em}{0.5pt}\\[6pt]
\textbf{Table No.}\hfill\textbf{Table Description}\hfill\textbf{Page No.}\\
\rule{50em}{0.5pt}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage}
\end{spacing}}

%=========================ABBREVIATION=========================================


% %================