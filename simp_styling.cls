%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template.
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simp_styling}[2020/08/19 simple resume class]

\LoadClass[11pt, letterpaper]{article} % Font size and paper type

\usepackage{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{hyperref} % Required for hyperlinks
\usepackage{xcolor}

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%       HEADINGS COMMANDS: Commands for printing name and byline info
%----------------------------------------------------------------------------------------

\newcommand{\name}[1]{\def \@name{#1}} % Defines the \name command to set name
\def \@name{} % Sets \@name to empty by default

\newcommand{\byline}[1]{\def \@byline{#1}}
\def \@byline{}

%----------------------------------------------------------------------------------------
%       PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

% \printaddress is used to style an address line (given as input)
\newcommand{\printbyline}{
\begin{center}
\@byline
\end{center}
}

% \printname is used to print the name as a page header
\newcommand{\printname}{
\begin{center}
\MakeUppercase{\huge \bf \@name}
\end{center}
}

%----------------------------------------------------------------------------------------
%       SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newcommand{\rSection}[1]{\MakeUppercase{\bf #1} \vspace{1mm} \hrule \vspace{0.2mm}}

%----------------------------------------------------------------------------------------
%       SUBSECTION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{
\def \@flag{#4}
{\bf #1} {\textcolor{darkgray}{#2}} \hfill {#3 \\ \vspace{-5mm}}
\ifthenelse{\not \equal{#4}{}}{
\vspace{-1.5mm}
\begin{list}{$\cdot$}{\leftmargin=3mm}
\itemsep -1.5mm}{}
}
{
\ifthenelse{\not \equal{\@flag}{}}{
\end{list}}{}
}

%----------------------------------------------------------------------------------------
%       EDUCATION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rEducation}[4]{
{\bf #1} \hfill {#2} \\
\hspace*{2mm} #3 \hfill {#4} \\
\vspace{-5mm} \\
}
{}


