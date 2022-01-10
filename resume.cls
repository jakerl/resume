\ProvidesClass{resume}[2022/01/09 resume class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions
\LoadClass{article}

\RequirePackage{xcolor}
\usepackage{hyperref}
\hypersetup {
    colorlinks = true,
    urlcolor = green
}

\definecolor{background}{HTML}{282a36}
\definecolor{currentline}{HTML}{44475a}
\definecolor{selection}{HTML}{44475a}
\definecolor{foreground}{HTML}{f8f8f2}
\definecolor{comment}{HTML}{6272a4}
\definecolor{cyan}{HTML}{8be9fd}
\definecolor{green}{HTML}{50fa7b}
\definecolor{orange}{HTML}{ffb86c}
\definecolor{pink}{HTML}{ff79c6}
\definecolor{purple}{HTML}{bd93f9}
\definecolor{red}{HTML}{ff5555}
\definecolor{yellow}{HTML}{f1fa8c}

\pagecolor{background}

\global\let\default@color\current@\color{foreground}

\newcommand{\header}[3]{
    \begin{Huge}
        \noindent #1 #2 
    \end{Huge}
    \newline 
    \begin{large}
        #3
    \end{large}
    \newline 
}

\newcommand{\contact}[1] {
    \href{mailto:#1}{#1}
}