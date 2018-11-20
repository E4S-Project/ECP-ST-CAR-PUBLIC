%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File  : ecpreport-publicv1.cls
% Author: Tom Evans
% Date  : Monday December 18 23:6:57 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ecpreport-publicv1}[2018/11/20 ECP Public Report Class Version 1]

\ExecuteOptions{a4paper,11pt,oneside,onecolumn,number}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage{geometry}
\RequirePackage{fancyhdr}

\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{bm} % bold math symbols for vectors
\RequirePackage[pdftex]{graphicx}
\RequirePackage{transparent}
\RequirePackage{caption}
\RequirePackage{emptypage} % hide footers on blank pages
\RequirePackage{calc} % TeX width calculations
% \RequirePackage{tocloft} % table of contents styling
\RequirePackage[pages=some]{background}

\captionsetup{width=.75\textwidth,font=small,labelfont=bf}

% Use Utopia Regular with Fourier
%\usepackage{fourier}
% Revert calligraphy math:
% \SetMathAlphabet{\mathcal}{normal}{OMS}{xmdcmsy}{m}{n}%
% Use nicer PDF-based formatting
\usepackage{microtype}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MACROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\EE}[1]{\ensuremath{\times 10^{#1}}}
\newcommand{\units}[1]{\:\text{#1}}
\newcommand{\ttimes}{\ensuremath{{}\times{}}} % text mode 'times' operator

\newcommand{\mat}[1]{\mathbf{#1}} % matrix is bold upright
\renewcommand{\vec}[1]{\bm{#1}} % vector is bold italic
\newcommand{\op}[1]{\mathsf{#1}} % ``operator'' is sans serif

\newcommand{\vd}{\bm{\cdot}} % slightly bold vector dot
\newcommand{\del}{\vec{\nabla}} % gradient (Del) is bold
\newcommand{\grad}{\vec{\nabla}} % gradient

\newcommand{\conj}{^{\ast}} % complex conjugate (transpose)
\newcommand{\norm}[1]{\left\| #1 \right\|} % double pipe
\newcommand{\abs}[1]{\left| #1 \right|} % single pipe
\newcommand{\eps}{\varepsilon}

\newcommand{\inv}{^{-1}}
\newcommand{\SN}{S$_N$}
\newcommand{\PN}{P$_N$}

% Multi-sentence caption command (first arg is first sentence, second arg is
% remainder)
\newcommand{\Caption}[2]{\caption[#1]{#1 #2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@reportnum{ECP-U-2018-xxx}
\newcommand{\reportnum}[1]{\def\@reportnum{#1}}

\def\@wbs{$<$n.m.o.p$>$}
\newcommand{\wbs}[1]{\def\@wbs{#1}}

\def\@id{$<$ID$>$}
\newcommand{\id}[1]{\def\@id{#1}}

\def\@submitter{No one, Nowhere}
\newcommand{\submitter}[1]{\def\@submitter{#1}}

\def\@concurrence{Concurer, Title}
\newcommand{\concurrence}[1]{\def\@concurrence{#1}}

\def\@concurrenceorg{Organization}
\newcommand{\concurrenceorg}[1]{\def\@concurrenceorg{#1}}

\def\@approver{Approver, Title}
\newcommand{\approver}[1]{\def\@approver{#1}}

\def\@approverorg{Organization}
\newcommand{\approverorg}[1]{\def\@approverorg{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\geometry{
  margin=1in,
  headheight=1in}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[RO]{\transparent{0.4}\includegraphics{ecp-small}}
\fancyfoot[CE,CO]{\thepage}
\fancyfoot[RE,RO]{\@id}
\fancyfoot[LE,LO]{Exascale Computing Project (ECP)}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FRONT MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\if@mainmatter
\@mainmattertrue
\def\@clearifmainmatter{\if@mainmatter\relax\else\cleardoublepage\fi}

\backgroundsetup{
  scale=1,
  opacity=0.5,
  angle=0,
  contents={%
    \includegraphics[width=\paperwidth,height=\paperheight]{cover}
  }%
}

\newcommand\frontmatter{%
  \pagenumbering{roman}
  \@mainmatterfalse%
  %% --TITLE PAGE
  \begin{titlepage}
    \BgThispage
    \vspace*{10\baselineskip}%
    \textbf{\@reportnum}\\
    \vskip 1.5\baselineskip
    \Large \textbf{\@title}\\
    \vskip 0.25\baselineskip%
%    \textbf{WBS \@wbs}, \textbf{Milestone \@id}\\
%    \vskip 1\baselineskip%
    \def\and{\\}% Newline between authors
    \setlength\tabcolsep{0pt}%
    \begin{tabular}[t]{l}%
      \@author
    \end{tabular}%
    \vskip 1\baselineskip%
    \@date
  \end{titlepage}%
  %% - LEGALEEZE
  \begin{center}
    \fbox{
      \parbox{5in}{\small
        \begin{center}
          \textbf{DOCUMENT AVAILABILITY}
        \end{center}
        Reports produced after January 1, 1996,
        are generally available free via US Department of Energy (DOE) SciTech
        Connect.
        %%
        \begin{quote}
          \textbf{Website} http://www.osti.gov/scitech/
        \end{quote}
        %%
        Reports produced before
        January 1, 1996, may be purchased by members of the public from the
        following source:
        %%
        \begin{quote}
          National Technical Information Service\\
          5285 Port Royal Road\\
          Springfield, VA 22161\\
          \textbf{Telephone} 703-605-6000 (1-800-553-6847)\\
          \textbf{TDD} 703-487-4639\\
          \textbf{Fax} 703-605-6900\\
          \textbf{E-mail} info@ntis.gov\\
          \textbf{Website} http://www.ntis.gov/help/ordermethods.aspx
        \end{quote}
        %%
        Reports are available to DOE employees, DOE contractors,
        Energy Technology Data Exchange representatives, and International
        Nuclear Information System representatives from the following source:
        %%
        \begin{quote}
          Office of Scientific and Technical Information\\
          PO Box 62\\
          Oak Ridge, TN 37831\\
          \textbf{Telephone} 865-576-8401\\
          \textbf{Fax} 865-576-5728\\
          \textbf{E-mail} reports@osti.gov\\
          \textbf{Website} http://www.osti.gov/contact.html
        \end{quote}
      }}
    %%
    \vskip 2\baselineskip
    \fbox{
      \parbox{4in}{\small
        This report was prepared as an account of work sponsored by an
        agency of the United States Government. Neither the United States
        Government nor any agency thereof, nor any of their employees,
        makes any warranty, express or implied, or assumes any legal
        liability or responsibility for the accuracy, completeness, or
        usefulness of any information, apparatus, product, or process
        disclosed, or represents that its use would not infringe privately
        owned rights. Reference herein to any specific commercial product,
        process, or service by trade name, trademark, manufacturer, or
        otherwise, does not necessarily constitute or imply its
        endorsement, recommendation, or favoring by the United States
        Government or any agency thereof. The views and opinions of
        authors expressed herein do not necessarily state or reflect those
        of the United States Government or any agency thereof.
      }}
  \end{center}
  \thispagestyle{empty}
  %% - INTERNAL TITLE
  \newpage
  \begin{center}
    {\Large\textbf{\@reportnum}}\\
    \vspace*{9\baselineskip}
%    {\Large\textbf{ECP Milestone Report}}\\
%    \vskip 0.4\baselineskip%
    {\Large\textbf{\@title}}\\
    \vskip 0.4\baselineskip%
%    {\Large\textbf{WBS \@wbs}, \textbf{Milestone \@id}}\\
%    \vskip 10\baselineskip%
    Office of Advanced Scientific Computing Research\\
    Office of Science\\
    US Department of Energy\\
    \vskip 3\baselineskip%
    Office of Advanced Simulation and Computing\\
    National Nuclear Security Administration\\
    US Department of Energy\\
    \vskip  1\baselineskip%
    \@date
  \end{center}
  \pagenumbering{roman}
  \setcounter{page}{3}
%  %% - APPROVALS
%  \newpage
%  \begin{center}
%    {\Large\textbf{ECP Milestone Report}}\\
%    \vskip 0.4\baselineskip%
%    {\Large\textbf{\@title}}\\
%    \vskip 0.4\baselineskip%
%    {\Large\textbf{WBS \@wbs}, \textbf{Milestone \@id}}\\
%    \vskip 2\baselineskip
%    {\large\textbf{APPROVALS}}\\
%    \vskip 3\baselineskip%
%  \end{center}
%  \noindent\textbf{Submitted by}:\\
%  \vskip 2\baselineskip%
%  \begin{tabular}{p{4in}p{0.5in}p{1in}}\cline{1-1}\cline{3-3}
%    &&\\
%    \@submitter & & Date \\
%    \@id & & \\
%  \end{tabular}
%  \vskip 4\baselineskip%
%  \noindent\textbf{Concurrence}:\\
%  \vskip 2\baselineskip%
%  \begin{tabular}{p{4in}p{0.5in}p{1in}}\cline{1-1}\cline{3-3}
%    &&\\
%    \@concurrence & & Date \\
%    \@concurrenceorg & & \\
%  \end{tabular}
%  \vskip 4\baselineskip%
%  \noindent\textbf{Approval}:\\
%  \vskip 2\baselineskip%
%  \begin{tabular}{p{4in}p{0.5in}p{1in}}\cline{1-1}\cline{3-3}
%    &&\\
%    \@approver & & Date \\
%    \@approverorg & & \\
%  \end{tabular}
} %% - end of FRONT MATTER

\renewcommand\contentsname{TABLE OF CONTENTS}
\let\@oldtableofcontents=\tableofcontents
\def\tableofcontents{
  \@clearifmainmatter%
  \@oldtableofcontents%
}

\let\@oldlistoffigures=\listoffigures
\def\listoffigures{
  \@clearifmainmatter%
  \addcontentsline{toc}{section}{LIST OF FIGURES}
  % \section*{List of Figures}%
  \@oldlistoffigures%
}

\let\@oldlistoftables=\listoftables
\def\listoftables{
  \@clearifmainmatter%
  \addcontentsline{toc}{section}{LIST OF TABLES}
  % \section*{List of Figures}%
  \@oldlistoftables%
}

\renewenvironment{abstract}{%
  \@clearifmainmatter
  \addcontentsline{toc}{section}{EXECUTIVE SUMMARY}
  \section*{EXECUTIVE SUMMARY}%
}{}

\newenvironment{revlog}{%
  \newpage
  \begin{center}
    \vspace*{1\baselineskip}
    \large\textbf{REVISION LOG}\\
    \vskip 1\baselineskip%
    \small
%    \begin{tabular}{|l|l|p{2.5in}|l|}\hline
    \begin{tabular}{|l|l|p{2.5in}|}\hline
      \rowcolor{lightgray}
      \multicolumn{1}{|c}{\textbf{Version}} &
%      \multicolumn{1}{|c}{\textbf{Creation Date}} &
      \multicolumn{1}{|c}{\textbf{Date}} &
      \multicolumn{1}{|c}{\textbf{Description}}\\\hline
%      \multicolumn{1}{|c|}{\textbf{Approval Date}}\\\hline
      }%
      {\end{tabular}\end{center}\pagebreak}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN MATTER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue%
  \pagenumbering{arabic}}

\usepackage[bf,medium,raggedright]{titlesec}
\titleformat{\section}{\centering\bf\large}{\thetitle.}{1ex}{\MakeUppercase}[]
\titleformat{\subsection}{\bf}{\thetitle}{1ex}{\MakeUppercase}[]
\titleformat*{\subsubsection}{\bf\itshape}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APPENDIX PAGE NUMBERING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\appendixpagenumbering}{
  \break
  % \pagenumbering{arabic}
  \renewcommand{\thepage}{\thesection-\arabic{page}}
}

% Change format for appendices: 'appendix' in title, title takes entire page,
% is not numbered, followed by a blank unnumbered page.
\renewcommand\appendixname{APPENDIX}
\renewcommand\appendix{%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \newpage
  %
  %\titleclass{\section}{page}%
  %\assignpagestyle{\section}{empty}%
  %\titleformat{\section}[block]{\vfill\filcenter\bf}{\appendixname~\thetitle.}{1ex}{\MakeUppercase}[\vfill]%
  % \titlespacing*{\section}{0pt}{0pt}{0pt}%
  \gdef\thesection{\@Alph\c@section}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BIBLIOGRAPHY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Use the command below for footnote style w/reference list.
%\usepackage[backend=biber,notes]{biblatex-chicago}
%Use the command below for author-date style w/reference list.
%\usepackage[authordate,strict,backend=biber,autolang=other,bibencoding=inputenc]{biblatex-chicago}

%The variables below allow you to define some things about the references list,
%including the name.
\renewcommand\refname{References}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% end of ecpreportv2.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
