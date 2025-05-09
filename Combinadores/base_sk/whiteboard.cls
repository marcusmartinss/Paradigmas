\ProvidesClass{whiteboard}
\LoadClass[18pt,aspectratio=169]{beamer}

% packages
\usepackage[utf8]{inputenc}
\usepackage[portuges,brazil]{babel}
\usepackage{tikz}
\usepackage[svgnames]{xcolor}
\usepackage{inconsolata}
\usepackage{minted}
\usepackage{mdframed}
\usepackage{enumerate}
\usepackage{amsmath}
\usepackage{fontspec}
\usepackage{fontawesome5}
\usepackage[theorems]{tcolorbox}

% Setup
\usetikzlibrary{calc}
\usetikzlibrary{arrows, arrows.meta}
\usefonttheme{professionalfonts}
\beamertemplatenavigationsymbolsempty
\usefonttheme{serif}
\setmainfont{BloggerSans}
\RecustomVerbatimEnvironment{Verbatim}{BVerbatim}{}
\setmonofont{Fantasque Sans Mono}

% Colors

\definecolor{BBGreen}{HTML}{00AE8A}
\definecolor{BBEmerald}{HTML}{028A0F}
\definecolor{BBBlue}{HTML}{3300A1}
\definecolor{BBCyan}{HTML}{0892E0}
\definecolor{BBOrange}{HTML}{FC5E00}
\definecolor{BBViolet}{HTML}{8E43A9}
\definecolor{BBRed}{HTML}{EC0035}
\definecolor{BBGray}{HTML}{AAAAAA}
\definecolor{BBWhite}{HTML}{FFFFFF}
\definecolor{BBBlack}{HTML}{000000}

\setbeamercolor{math text}{fg=BBCyan}

\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=black,      
    urlcolor=blue,
}

% Novos comandos

\newcommand{\bbbold}[1]{\textbf{\textcolor{black}{#1}}}
\newcommand{\bbtext}[1]{{\textcolor{BBBlue}{#1}}}
\newcommand{\bbinfo}[1]{\textbf{\textcolor{BBOrange}{#1}}}
\newcommand{\bbalert}[1]{\textbf{\textcolor{BBRed}{#1}}}
\newcommand{\bbenglish}[1]{{\textit{\textcolor{BBGreen}{#1}}}}
\newcommand{\bbcomment}[1]{\textit{\textcolor{BBViolet}{#1}}}
\newcommand{\bbnote}[1]{\textit{\textcolor{BBCyan}{#1}}}
\newcommand{\bbemph}[1]{\textbf{\textcolor{BBEmerald}{#1}}}
\newcommand{\bbupdate}[1]{\textbf{\textcolor{BBCyan}{#1}}}
\newcommand{\bblink}[1]{\texttt{\textcolor{BBCyan}{#1}}}
\newcommand{\bbchalk}[1]{\textbf{\textcolor{BBWhite}{#1}}}
\newcommand{\bboutput}[1]{\texttt{\textcolor{BBOrange}{#1}}}

\newcommand{\bbcover}[4]{
    \vspace{1in}
    \hspace{0.3in}
    {\Huge \bbbold{#1}}

    \vspace{0.2in}
    \hspace{0.3in}
    {\Large \bbcomment{#2}}

    \vspace{0.5in}
    \hspace{0.3in}
    {\bbtext{#3}}

    \vspace{0.1in}
    \hspace{0.3in}
    {\bbenglish{#4}}
}

\newcommand{\code}[2]{\mintinline{#1}{#2}}
\newcommand{\inputcode}[2]{\begin{mdframed}[shadow=true,shadowsize=3pt,shadowcolor=gray]\inputminted[fontsize=\footnotesize,linenos,numbersep=4pt]{#1}{#2}\end{mdframed}}

\newcommand{\inputsmallcode}[2]{\begin{mdframed}[shadow=true,shadowsize=3pt,shadowcolor=gray]\inputminted[fontsize=\scriptsize,linenos,numbersep=4pt]{#1}{#2}\end{mdframed}}

\newcommand{\inputsnippet}[4]{\begin{mdframed}[shadow=true,shadowsize=3pt,shadowcolor=gray]\inputminted[fontsize=\footnotesize,linenos,firstline=#2,lastline=#3,numbersep=2pt]{#1}{#4}\end{mdframed}}

\newcommand{\inputline}[3]{\inputminted[fontsize=\footnotesize,firstline=#2,lastline=#2]{#1}{#3}}
\newcommand{\inputsmallline}[3]{\inputminted[fontsize=\scriptsize,firstline=#2,lastline=#2]{#1}{#3}}

\newcommand{\inputsyntax}[2]{\inputminted[fontsize=\footnotesize]{#1}{#2}}

\newcommand{\vv}[1]{\vec{\mkern0mu#1}}
\newcommand{\Mod}[2]{#1\ (\mbox{mod}\ #2)}
\newcommand{\dist}{\mathrm{dist}}

\DeclareMathSymbol{\mlq}{\mathord}{operators}{``}
\DeclareMathSymbol{\mrq}{\mathord}{operators}{`'}
