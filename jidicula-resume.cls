%% jidicula-resume.cls
% Copyright 2020 Johanan Idicula
%
% LICENSE
% Copyright 2020 Johanan Idicula

% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
% http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.

% This work has the LPPL maintenance status `maintained'.

% The Current Maintainer of this work is Johanan Idicula.

% This work consists of the file LICENSE, jidicula-resume.tex, jidicula-resume.cls .
% Intro Options
\ProvidesClass{jidicula-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{000000}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec{Helvetica Neue Medium}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(160,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Live location command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{20mm}
\textblockorigin{0mm}{5mm}
\newcommand{\livelocation}[1]{\begin{textblock}{60}(0,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont
Latest version at {#1}
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\color{primary}
		\fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec{Helvetica Neue Light}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{primary}\fontspec{Helvetica Light}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Helvetica Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subheadings command
\titleformat{\subsection}{\color{subheadings}
  % TODO remove raggedright here?
  \fontspec{Helvetica}\fontsize{12pt}{12pt}\raggedright\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
  \fontspec{Helvetica}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Subsubheadings command
\titleformat{\subsubsection}{\color{subheadings}
  % TODO remove raggedright here?
  \fontspec{Helvetica Neue Medium}\fontsize{10pt}{12pt}\raggedright\selectfont}{}{0em}{}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsubsection}[1]{\color{subheadings}
  \fontspec{Helvetica Neue Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Helvetica}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\scshape\fontspec{Helvetica}\fontsize{10pt}{12pt}\selectfont\bfseries {#1 \\} \normalfont\color{primary}}

% Section separators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
