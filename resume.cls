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

\usepackage{fontspec}
\usepackage[abspath]{currfile}

\defaultfontfeatures[Source Serif Pro] {
    Extension = .ttf,
    Path = \currfileabsdir/SourceSerifPro/,
    UprightFont = SourceSerifPro-Regular,
    ItalicFont = SourceSerifPro-Italic,
}
\defaultfontfeatures[Source Serif Pro Bold] {
    Extension = .ttf,
    Path = \currfileabsdir/SourceSerifPro/,
    UprightFont = SourceSerifPro-Bold,
    ItalicFont = SourceSerifPro-BoldItalic,
}
\defaultfontfeatures[Source Serif Pro SemiBold] {
    Extension = .ttf,
    Path = \currfileabsdir/SourceSerifPro/,
    UprightFont = SourceSerifPro-SemiBold,
    ItalicFont = SourceSerifPro-SemiBoldItalic,
}
\defaultfontfeatures[Source Serif Pro Light] {
    Extension = .ttf,
    Path = \currfileabsdir/SourceSerifPro/,
    UprightFont = SourceSerifPro-Light,
    ItalicFont = SourceSerifPro-LightItalic,
}
\defaultfontfeatures[Source Serif Pro Extra Light] {
    Extension = .ttf,
    Path = \currfileabsdir/SourceSerifPro/,
    UprightFont = SourceSerifPro-ExtraLight,
    ItalicFont = SourceSerifPro-ExtraLightItalic,
}

\newfontfamily\boldfont[]{Source Serif Pro Bold}
\newfontfamily\semiboldfont[]{Source Serif Pro SemiBold}
\newfontfamily\lightfont[]{Source Serif Pro Light}
\newfontfamily\extralightfont[]{Source Serif Pro Extra Light}

\setmainfont{Source Serif Pro}

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
\pagenumbering{gobble}

\global\let\default@color\current@\color{foreground}

\newcommand{\header}[3]{
    \begin{center}
        \begin{Huge}
            {\extralightfont#1}{\boldfont#2}
        \end{Huge}
    \end{center}
    \begin{center}
        \begin{huge}#3\end{huge}
    \end{center}
}

\newcommand{\contact}[1] {
    \begin{center}
        \href{mailto:#1}{#1}
    \end{center}
}