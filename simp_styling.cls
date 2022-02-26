%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% simple resume template - class file
%
% this .cls file defines the styling for the simple resume
%
% author: Daniel Guo
%
% link: https://github.com/d-guo/simp_resume
%
% based on Trey Hunner's resume template
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simp_styling}[2020/08/19 simple resume class]

\LoadClass[11pt, letterpaper]{article}

\usepackage{parskip} % removes paragraph indentation
\usepackage{array} % for bold column in tabular
\usepackage{ifthen} % preventing displaying blank space
\usepackage{hyperref} % for hyperlinks
\usepackage{xcolor} % for coloring text

\pagestyle{empty} % no page numbers

%----------------------------------------------------------------------------------------
%        for printing heading name and byline
%----------------------------------------------------------------------------------------

\newcommand{\name}[1]{\def \@name{#1}}
\def \@name{}

\newcommand{\byline}[1]{\def \@byline{#1}}
\def \@byline{}

\newcommand{\printbyline}{
\vspace{-1mm}
\begin{center}
\@byline
\end{center}
\vspace{-1mm}
}

\newcommand{\printname}{
\begin{center}
\MakeUppercase{\huge \bf \@name}
\end{center}
}

%----------------------------------------------------------------------------------------
%        for title of sections
%----------------------------------------------------------------------------------------

\newcommand{\rSection}[1]{\vspace{0.5mm} \MakeUppercase{\bf #1} \vspace{1mm} \hrule \vspace{0.2mm}}

%----------------------------------------------------------------------------------------
%        for subsection environments
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{
\def \@flag{#4}
{\bf #1} {#2} \hfill {#3} \\
\ifthenelse{\not \equal{#4}{}}{
\vspace{-8mm}
\small
\begin{list}{$\cdot$}{\leftmargin=3mm}
\itemsep -1mm}{}
}
{
\ifthenelse{\not \equal{\@flag}{}}{\end{list}\vspace{-2mm}}{\vspace{-4mm}}
}

%----------------------------------------------------------------------------------------
%        for education environment
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rEducation}[5]{
\def \@courseworkflag{#5}
{\bf #1} \hfill {#2} \\
{\small \hspace*{2mm} #3 \hfill {#4}} \\
\vspace{-5mm}
\ifthenelse{\not \equal{\@courseworkflag}{}}{\\}{}
}
{}