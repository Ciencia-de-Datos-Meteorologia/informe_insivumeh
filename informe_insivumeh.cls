\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{informe_insivumeh}

\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage{longtable}
\RequirePackage{geometry}
\RequirePackage{tabularx}

\geometry{
left=1.4cm,
right=1.4cm,
top=2cm,
bottom=2cm
}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering}m{#1}}

\renewcommand{\familydefault}{\sfdefault} %Estilo de letra

\newcounter{magicrownumbers}
\newcommand\rownumber{\stepcounter{magicrownumbers}\arabic{magicrownumbers}.}

\newcommand{\rowcontent}[1]{%
    \rownumber & #1 \\\hline
}

\newenvironment{countedtable}[2][|C{\dimexpr0.02\linewidth+2pt\relax}|L{0.9\linewidth}|]
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



\newcommand{\insivumeh}[1]{\gdef\@insivumeh{#1}}
\newcommand{\departamento}[1]{\gdef\@dep{#1}}
\newcommand{\tipo}[1]{\gdef\@tipo{#1}}
\newcommand{\renglon}[1]{\gdef\@reng{#1}}
\newcommand{\noContrato}[1]{\gdef\@contrat{#1}}
\newcommand{\cui}[1]{\gdef\@cui{#1}}
\newcommand{\nit}[1]{\gdef\@nit{#1}}
\newcommand{\servicios}[1]{\gdef\@serv{#1}}
\newcommand{\montoTotal}[1]{\gdef\@totalQ{#1}}
\newcommand{\honorarioMensual}[1]{\gdef\@monthQ{#1}}
\newcommand{\plazoTotal}[1]{\gdef\@totaldate{#1}}
\newcommand{\periodoInforme}[1]{\gdef\@monthdate{#1}}
\newcommand{\moneda}[1]{\gdef\@moneda{#1}}
\newcommand{\tituloPeriodo}[1]{\gdef\@plazo{#1}}
\newcommand{\nombre}[1]{\gdef\@name{#1}}
\newcommand{\vobo}[1]{\gdef\@vobo{#1}}
\newcommand{\puestoVobo}[1]{\gdef\@puestoVobo{#1}}


\insivumeh{Instituto Nacional De Sismología, Vulcanología, Meteorología e Hidrología \---INSIVUMEH\---}
\departamento{Departamento de Investigación y Servicios Meteorológicos}
\tipo{mensual}
\renglon{029}
\noContrato{313-2024-029-INSIVUMEH}
\nombre{Aaaaa Bbbbb Ccccc Ddddd}
\cui{0000 00000 0000}
\servicios{Técnicos}
\montoTotal{000,000.00}
\honorarioMensual{00,000.00}
\plazoTotal{Del 1 de enero al 31 de diciembre de 2025}
\periodoInforme{Del 1 de enero al 31 de enero de 2025}
\moneda{Q.}
\tituloPeriodo{Honorarios Mensuales:}
\vobo{}
\puestoVobo{}

\author{\@name}
\title{Informe \@tipo\space de prestación de servicios, renglón \@reng}

\def\dep{\@dep}
\def\mensualtest{final}

\renewcommand{\maketitle}{
    \ifx \@tipo\mensualtest
        \begin{center}
            \textbf{\MakeUppercase{\@insivumeh} \vspace{0.5cm} \\
            \MakeUppercase{\@title}}
            \vspace{5pt}

            \begin{tabular}{|L{0.22\linewidth}|L{0.32\linewidth}|L{0.12\linewidth}|L{0.22\linewidth}|}
                \hline 
                \textbf{Nombre completo del Contratista:} & \@author & \textbf{CUI:} & \@cui \\ 
                \hline 
                \textbf{Número de Contrato:} & \@contrat & \textbf{NIT del Contratista:} & \@nit \\ 
                \hline 
                \textbf{Servicios (Técnicos o Profesionales):} &  \multicolumn{3}{l|}{Servicios \@serv}  \\ 
                \hline 
                \textbf{Monto total del Contrato:} & \@moneda\@totalQ & \textbf{Plazo del Contrato:} & \@totaldate \\
                \hline \raggedright 
                \textbf{Unidad Administrativa donde presta los servicios:} & \multicolumn{3}{l|}{\@dep}\\ 
                \hline 
            \end{tabular}
        \end{center}

    \else
        \begin{center}
            \textbf{\MakeUppercase{\@insivumeh} \vspace{0.5cm} \\
            \MakeUppercase{\@title}}
            \vspace{5pt}

            \begin{tabular}{|L{0.22\linewidth}|L{0.32\linewidth}|L{0.12\linewidth}|L{0.22\linewidth}|}
                \hline 
                \textbf{Nombre completo del Contratista:} & \@author & \textbf{CUI:} & \@cui \\ 
                \hline 
                \textbf{Número de Contrato:} & \@contrat & \textbf{NIT del Contratista:} & \@nit \\ 
                \hline 
                \textbf{Servicios (Técnicos o Profesionales):} &  \multicolumn{3}{l|}{Servicios \@serv}  \\ 
                \hline 
                \textbf{Monto total del Contrato:} & \@moneda\@totalQ & \textbf{Plazo del Contrato:} & \@totaldate \\ 
                \hline 
                \textbf{\@plazo} & \@moneda\@monthQ & \textbf{Período del Informe:} & \@monthdate \\ 
                \hline \raggedright 
                \textbf{Unidad Administrativa donde presta los servicios:} & \multicolumn{3}{l|}{\@dep}\\ 
                \hline 
            \end{tabular}
        \end{center}
    \fi
}


\newcommand{\firmas}{
    \vspace{15pt}

    \begin{center}   
        \begin{tabular}{L{30pt}C{200pt}r}
            (f) & \rule{\linewidth}{0.1pt}  &   \\
                & \@author                  &   \\
                &                           &   \\
            \multicolumn{3}{p{0.98\linewidth}}{
                \vspace{5pt}
                El presente informe responde a lo estipulado en el
                contrato administrativo suscrito con el prestador de
                servicios y sus respectivos términos de referencia,
                asimismo, se encuentra recibido de conformidad, por lo que
                se autoriza a quien corresponda, para que procedan al
                trámite de pago respectivo.
                \vspace{50pt}
            }                                   \\
            Vo.Bo. & \rule{200pt}{0.1pt}    &   \\
                & \@vobo                    &   \\
                & \@puestoVobo              &   \\
        \end{tabular}
    \end{center}
}
