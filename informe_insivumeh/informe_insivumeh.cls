\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{informe_insivumeh}

\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish,mexico]{babel}
\RequirePackage{longtable}
\RequirePackage{geometry}



\geometry{
paperwidth=8.5in,
paperheight=13in,
left=1.4cm,
right=1.4cm,
top=1.4cm,
bottom=2cm,
headheight=100pt
}

\renewcommand{\familydefault}{\sfdefault} %Estilo de letra

\newcounter{magicrownumbers}
\newcommand\rownumber{\stepcounter{magicrownumbers}\arabic{magicrownumbers}.}


% \newcommand{\fillrows}[1]{%
%     \def\filledrows{}
%     \foreach \x in #1{
%         \protected@xappto\filledrows{\rownumber \x & a \\}
%     }
% }

\newcommand{\rowcontent}[1]{%
    \rownumber & #1 \\\hline
}

\newcommand{\coutedtable}[2]{%
    \setcounter{magicrownumbers}{0}
    \def\filledrows{}
    \begin{longtable}{|c|p{0.9\linewidth}|}
    \hline
    N.\textsuperscript{o} & 
        \multicolumn{1}{c|} {
    	\small\textbf{\MakeUppercase{#1}}
    	}
    \\
    \hline
    \endhead
    #2
    % \hline
    \end{longtable}
}


\newcommand{\tdr}[1]{\gdef\@tdr{#1}}
\tdr{}

\newcommand{\actividades}[1]{\gdef\@actividades{#1}}
\actividades{}

\newenvironment{countedtable}[2][|c|p{0.9\linewidth}|]
{
    \renewcommand{\arraystretch}{1.7}
    \setcounter{magicrownumbers}{0}
    \begin{longtable}{#1}
    \hline
    N.\textsuperscript{o} & 
        \multicolumn{1}{c|} {
    	\small\textbf{\MakeUppercase{#2}}
    	}
    \\
    \hline
    \endhead 
}
{
    \end{longtable}
    \renewcommand{\arraystretch}{1.7}
}


