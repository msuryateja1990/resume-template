\ProvidesClass{cvhari}
\LoadClass{article}

\RequirePackage[margin=2cm]{geometry}
\usepackage{microtype}

\RequirePackage{xcolor}

\definecolor{VividPurple}{HTML}{2E64FE}
\definecolor{SlateGrey}{HTML}{2E2E2E}
\definecolor{LightGrey}{HTML}{555555}
\definecolor{AzureRadiance}{HTML}{00ABFF}
\definecolor{DodgerBlue}{HTML}{4F83FF}
\definecolor{ElectricViolet}{HTML}{9F00FF}
\definecolor{Black}{HTML}{000000}

% % Change the colour below to one of the above values.
\colorlet{accent}{DodgerBlue} %Black!90 for print
\colorlet{body}{Black!80}

\RequirePackage{fontawesome}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\devsymbol}{\faCode}

\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{#1}\hspace{0.5em}#2\hspace{2em}}}

\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}


\newcommand{\makecvheader}{%
  \begingroup \center
    {\Large\bfseries\color{black}\textls[250]{\MakeUppercase{\@name}}\par}
    \smallskip
    {\normalsize\bfseries\color{accent}\textls[340]{\MakeUppercase{\@tagline}}\par}
    \smallskip
    {\center\footnotesize\bfseries\@personalinfo\par}
  \endgroup\smallskip
}


\RequirePackage{dashrule}

%% Blue (or accent coloured) divider is company separator
\setlength{\parindent}{0pt}
\newcommand{\divider}{\medskip\textcolor{accent}{\hdashrule{\linewidth}{0.8pt}{0.5ex}}\bigskip}


%% Gray divider is project separator
\setlength{\parindent}{0pt}
\newcommand{\dividergray}{\textcolor{body!50}{\hdashrule{\linewidth}{0.4pt}{0.5ex}}\smallskip}


\newcommand{\cvsection}[1]{%
  \bigskip%
  {\color{accent}\small\bfseries\textls[250]{\MakeUppercase{#1}}}\\[-1ex]%
  {\color{accent}\rule{\linewidth}{1.2pt}\par}\medskip
}

% textendash, textbullet
\newcommand{\itemmarker}{\color{accent}\small\textbullet}
\newcommand{\dashedbullets}{\color{accent}\small\textendash}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.8em,nosep,itemsep=0.15\baselineskip,after=\vskip0.15\baselineskip,before=\vskip0.15\baselineskip}
\setlist[itemize]{label=\itemmarker}


\newcommand{\company}[4]{%
\smallskip
    {\small\color{body}\textls[140]{\textbf{\MakeUppercase{#1}}}}       \hfill
    {\small\color{body}\textls[140]{\textbf{\MakeUppercase{#2}}}}       \par
    \smallskip
    { \color{accent} \faMapMarker} \hspace{0.5em}{\color{body}{#3}}   \hfill 
    { \color{accent} \faCalendar}  \hspace{0.5em}{\color{body}{#4}}   \par
    \smallskip
}

\RequirePackage{tikz}
\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=accent,rounded corners,inner xsep=1ex,inner ysep =0.75ex,text height=1.2ex,text depth=.2ex,fill=accent]{\bfseries\scriptsize\textcolor{white}{#1}};
}

\NewDocumentCommand{\splitoncomma}{ >{\SplitList{,}} m }{%
  \ProcessList{#1}{\func}%
}

\NewDocumentCommand{\func}{m}{%
  \cvtag{#1} % a space follows
}


\newcommand{\project}[4]{%
\bigskip
    %\normalise
    \textbf{Project:}  #1   \hfill \textbf{Client:} #2\par\smallskip
    \textbf{Role(s):}  #3   \hfill \textbf{Technologies:} {#4}\par\smallskip
    \textbf{Responsibilities:}\par\smallskip
}

\newcommand{\education}[4]{%
\smallskip
    {\small\color{body}\textls[140]{{\MakeUppercase{#1}}}}  \\
    {\small\textls[140]{{{#2}}}}  %\par\smallskip 
    \hfill{ \color{accent} \faCalendar}  \hspace{0.5em}{{#4}}   \par
}


\RequirePackage{multirow,tabularx}
\newcommand{\cvachievement}[3]{%
  \begin{tabularx}{\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
  \multirow{2}{*}{\Large\color{accent}#1} & {#2}\\
  & #3
  \end{tabularx}%
  \smallskip
}

\pdfinfo{ /Author (Hari B Kurup) /Title (Resume) /Keywords (C; C++; PHP; Software Engineer; Technical Lead; Hari B Kurup;) /Subject (Resume template by Hari B Kurup)  /Producer(Hari B Kurup) /Creator(Hari B Kurup)}

\newcommand{\skills}[1]{%
\smallskip
    {\small\color{body}\textls[140]{{\MakeUppercase{#1}}}}  \\
    \smallskip
}


\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}