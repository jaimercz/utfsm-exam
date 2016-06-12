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

\RequirePackage[vcentering,top=1in,left=1in]{geometry}

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
\extraheadheight{5mm}
\firstpageheader{}{%
    \textbf{\Large \curso}\\
   \textbf{\large Certamen \certamenNr}\\
    Programa \programa\\
    Departamento de Industrias - UTFSM\\
    \fecha
}{}
\runningheader{\curso\\Certamen \certamenNr}{}{Nombre:\line(1,0){250}}
\firstpagefootrule
\firstpagefooter{Departamento de Industrias, Universidad T\'ecnica Federico Santa Mar\'ia}
{}
{P\'agina \thepage\ de \numpages}
\runningfootrule
\runningfooter{Departamento de Industrias,  Universidad T\'ecnica Federico Santa Mar\'ia}
{}
{P\'agina \thepage\ de \numpages}

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
\noindent\makebox[\textwidth]{%
    Profesor:\enspace\profesor\enspace\hfill\enspace Ayudante:\enspace\ayudante
}

\vspace{3mm}
\noindent\makebox[\textwidth]{%
    Nombre:\enspace\hrulefill\enspace ROL:\enspace\rule{30mm}{0.15mm}
}
}