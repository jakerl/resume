\ProvidesClass{resume}[2022/01/09 resume class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions
\LoadClass{article}

\RequirePackage{xcolor}
\usepackage{fontspec}
\usepackage[abspath]{currfile}
\usepackage{hyperref}

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

\newcommand{\cyan}{8be9fd}
\newcommand{\green}{50fa7b}
\newcommand{\orange}{ffb86c}
\newcommand{\pink}{ff79c6}
\newcommand{\purple}{bd93f9}
\newcommand{\red}{ff5555}
\newcommand{\yellow}{f1fa8c}

\definecolor{background}{HTML}{282a36}
\definecolor{currentline}{HTML}{44475a}
\definecolor{selection}{HTML}{44475a}
\definecolor{foreground}{HTML}{f8f8f2}
\definecolor{comment}{HTML}{6272a4}

\definecolor{link}{HTML}{\green}

\directlua {
    if arg then
        for i,v in ipairs(arg) do
            if v == "--for-print" then
                tex.print("\string\\definecolor{background}{HTML}{FFFFFF}")
                tex.print("\string\\definecolor{foreground}{HTML}{000000}")
                tex.print("\string\\definecolor{link}{HTML}{111111}")
            end
        end
    end
}

\hypersetup {
    colorlinks = true,
    urlcolor = link
}

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