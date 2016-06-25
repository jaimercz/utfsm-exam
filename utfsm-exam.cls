%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Clase (LateX class) para Memorias y Tesis, UTFSM, Chile
%	=============================================
%
% Autor:
%       Jaime C. Rubin-de-Celis <jaime@rubin-de-celis.com>
%
% Fecha:	
%       $Date: 2016-06-11 21:35:52 -0400 (Sat, 11 June 2016) $
%
% Versión:
%       1.0
%
% Licencia:
%       Copyright (c) 2016, Jaime C. Rubin-de-Celis
%       The MIT Licence
%
%
% Uso:
%       Ver archivo adjunto README.md.
%       Si todo lo demás falla, recuerde "RFM".
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfsm-exam}[12/6/2016 UTFSM Thesis class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions
\LoadClass{exam}

%---------------------------------------------------------------------------
%%% LANGUAGE: Spanish
\RequirePackage[spanish]{babel}
\addto\shorthandsspanish{\spanishdeactivate{~<>}}
%---------------------------------------------------------------------------

\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{pdfpages}
\RequirePackage{xcolor}
\RequirePackage{paralist}

\RequirePackage[vcentering,top=1in,left=2cm]{geometry}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}


\colorgrids
\hqword{Pregunta:}
\hpword{Puntos:}
\hsword{Puntos obtenidos:}
\vqword{Pregunta:}
\vpword{Puntos:}
\vsword{Puntos obtenidos:}
\chqword{Pregunta}
\chpgword{Página}
\chpword{Puntos}
\chbpword{Puntos extra}
\chsword{Puntos obtenidos}
\chtword{Total}


\pagestyle{headandfoot}
%\firstpageheadrule
\runningheadrule
\extraheadheight{7mm}
\firstpageheader{\includegraphics[height=1.75cm]{figures/logoutfsmind_h.png}}{}{\includegraphics[height=2cm]{figures/logoind.png}}
\runningheader{\includegraphics[height=1.2cm]{figures/logoutfsmind_h.png}}{}{Certamen \certamenNr\ -\ \textbf{\curso}\\\programa\\Nombre:\line(1,0){250}}
\firstpagefootrule
\firstpagefooter{Departamento de Industrias, Universidad T\'ecnica Federico Santa Mar\'ia}
{}
{P\'agina \thepage\ de \numpages}
\runningfootrule
\runningfooter{Departamento de Industrias,  Universidad T\'ecnica Federico Santa Mar\'ia}
{}
{P\'agina \thepage\ de \numpages}

\definecolor{silver}{RGB}{210,210,220}

\newcommand{\estudiante}[2][]{%
    \vspace*{0.2in}\\
    \noindent\makebox[\textwidth]{Nombre:\enspace\hrulefill\enspace ROL:\enspace\rule{30mm}{0.15mm}}
}

\newcommand{\instrucciones}[1]{%
    \begin{center}
    \fbox{
        \fbox{\centering
            \parbox{6in}{%
                \textbf{Instrucciones:}\\#1
            }
        }
    }
    \end{center}
}

\renewcommand{\solutiontitle}{\noindent\textbf{Respuesta:\\}\enspace}

\newcommand{\printHeader}{%
    {\color{silver}\hrule}
    \begin{center}
      \textbf{\Large \curso}\\
      \textbf{\large Certamen \certamenNr}\\
      \programa\\
    \end{center}
    {\color{silver}\hrule}\vspace{5mm}
    \noindent\makebox[\textwidth]{%
        \textbf{Profesor:}\enspace\profesor\enspace\hfill
    }
    \noindent\makebox[\textwidth]{%
        \textbf{Ayudante:}\enspace\ayudante\hfill\textbf{Fecha:}\enspace\fecha
    }

    \vspace{3mm}
    \noindent\makebox[\textwidth]{%
        Nombre:\enspace\hrulefill\enspace ROL:\enspace\rule{30mm}{0.1mm}
    }
}
