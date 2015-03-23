%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       eeeeeeeeeeeeeeeeeeeeeeeeeeeee      rrrrrrrrrrr    rrrrrrrrrrrrr        cccccccccccccccccccccccccccccc %
%    eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee  rrrrrrrrrrrrrrrrrrrrrrrrrrrrr   ccccccccccccccccccccccccccccccccccc %
%  eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrrrrrrrrrrrrrrrrrr  ccccccccccccccccccccccccccccccccccccc%
% eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrrrrrrrrrrrrrrrrrrccccccccccccccccccccccccccccccccccccccc%
% eeeeeeeeeeeeee             eeeeeeeeeeee rrrrrrrrrrrrrrrrrrrrrrrrrrrrrcccccccccccccc                         %
%eeeeeeeeeeeeee               eeeeeeeeeee rrrrrrrrrrrrr                ccccccccccccc                          %
%eeeeeeeeeeeeee               eeeeeeeeeee rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeee               eeeeeeeeeee rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeee              eeeeeeeeeeee rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee  rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee   rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeee                           rrrrrrrrrrrrr                cccccccccccccc                         %
%eeeeeeeeeeeeee                           rrrrrrrrrrrrr                ccccccccccccc                          %
%eeeeeeeeeeeeee                           rrrrrrrrrrrrr                cccccccccccccc                         %
% eeeeeeeeeeeeeeeeeeeeeeee          eeeee rrrrrrrrrrrrr                ccccccccccccccccccccccccccccccccccccccc%
% eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrr                 cccccccccccccccccccccccccccccccccccccc%
%   eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrr                  ccccccccccccccccccccccccccccccccccccc%
%     eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrrr                   cccccccccccccccccccccccccccccccccc %
%-----------------------------------------------------------------------------------%-------------------------%
%-----------------------------------------------------------------------------------%
%	      T H E S I S	  &   	D I S S E R T A T I O N    T E M P L A T E			%
%-----------------------------------------------------------------------------------%
%-----------------------------------------------------------------------------------%
% This template is distributed with ABSOLUTELY NO WARRANTY.
% It serves as a guideline and constitutes a basic structure for a
% thesis/dissertation. The user assumes full responsibility for formatting
% and typesetting their document and for verifying that all the thesis
% requirements set by the University College Dublin are met. Please refer to the 
% most recent UCD thesis guide ()
% or contact the thesis consultant ().
% Please report any bugs to the thesis consultant.
\NeedsTeXFormat{LaTeX2e}%
\def\filename{ucdThesis.cls}%
\def\fileversion{ver 0.0.2}%
\def\filedate{23 March 2015}%
\def\contributors{Alexander C. Melhorn}%
\typeout{\filename}%
\typeout{\fileversion}%
\typeout{Created by Alexander C. Melhorn}%
\typeout{\filedate}%
\typeout{Some parts and settings of this class are based on the UTK template provided by Tony Saad. (http://web.utk.edu/~thesis/thesisresources.shtml)}
%---------------------------------------------------------------------------------------------------%
\ProvidesClass{ucdThesis}
% some internal variables
\def\thesisID{1}%
%\def\dissertationID{2}%
\def\theDocumentType#1{\gdef\@theDocumentType{#1}}%
\def\documentID#1{\gdef\@documentID{#1}}% documentID is either 1 (for thesis) or 2 (for dissertation)
% declare package options
\DeclareOption{thesis}{%
    \def\@theDocumentType{thesis}%
    \def\@documentID{\thesisID}}%
%\DeclareOption{dissertation}{%
%    \def\@theDocumentType{dissertation}%
%    \def\@documentID{\dissertationID}}%
\DeclareOption{linespacing}{\@lnspacing}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ExecuteOptions{thesis,a4paper,12pt}% execute default options
\ProcessOptions%
\LoadClass{report} % single-sided
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Main Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\currentDegree#1{\gdef\@currentDegree{#1}}%
\def\copyrightYear#1{\gdef\@copyrightYear{#1}}%
\def\graduationMonth#1{\gdef\@graduationMonth{#1}}%
\def\supervisor#1{\gdef\@supervisor{#1}}%
\def\nomProf#1{\gdef\@nomProf{#1}}%
\def\keywords#1{\gdef\@keywords{#1}}%
\def\headSchool#1{\gdef\@headSchool{#1}} %
\def\major#1{\gdef\@major{#1}}%
\def\degree#1{\gdef\@degree{#1}}%
\def\college#1{\gdef\@college{#1}}%
\def\dept#1{\gdef\@dept{#1}}%
\def\university#1{\gdef\@university{#1}}%
\def\numberOfCommitteeMembers#1{\gdef\@numberOfCommitteeMembers{#1}} % enter the number of committee members
\def\coSupervisorA#1 {\gdef\@coSupervisorA{#1}}% first committee member
\def\committeeMemberB#1 {\gdef\@committeeMemberB{#1}}% second committee member
\def\committeeMemberC#1 {\gdef\@committeeMemberC{#1}}% ... you get the trend!
\def\committeeMemberD#1 {\gdef\@committeeMemberD{#1}}%
\def\committeeMemberE#1 {\gdef\@committeeMemberE{#1}}%
% initialize macros
\def\@title{My Title}
\def\@author{My Name}
\def\@currentDegree{degree(s)}
\def\@keywords{My Keywords}
\def\@graduationMonth{May}
\def\@copyrightYear{2014}
\def\@supervisor{My Advisor}
\def\@nomProf{My Nominating Professor}
\def\@degree{Doctor of Philosophy}	% degree type
\def\@college{Engineering and Architecture}           % college
\def\@dept{Electrical, Electronic and Communications Engineering}	% department
\def\@headSchool{Prof. Thom Brazil}    % vice provost name
\def\@major{Electrical Engineering}	% major
\def\@university{University College Dublin}	% school
\def\@numberOfCommitteeMembers{3}
\def\@coSupervisorA {Co-Supervisor A}	% first committee member
\def\@committeeMemberB {Committee member B}	% second committee member
\def\@committeeMemberC {Committee member C}	% ... you get the trend!
\def\@committeeMemberD {Committee member D}	%
\def\@committeeMemberE {Committee member E}	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	LOAD PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsthm,amssymb}     			% AMS math, AMS theorem, AMS fonts
\RequirePackage{mathrsfs}                   			% additional math scripts
\RequirePackage{setspace}                   			% line spacing
\RequirePackage[vcentering,dvips,a4paper]{geometry}		% help with margins
\RequirePackage{color}									% allows for changing text color
\RequirePackage{nomencl}                    			% produces a nomenclature
\RequirePackage[numbers]{natbib}            			% this package allows you to link your references
\RequirePackage{graphicx}								% graphics package
\RequirePackage{float}                      			% figure floats
\RequirePackage{epstopdf}								% converts eps files to pdf
\RequirePackage[config, labelfont={bf}]{caption,subfig} % nice sub figures
\RequirePackage[Bjarne]{fncychap}						% creats fancier chapter titles
\RequirePackage{fancyhdr}                   			% fancy headers and footers
\RequirePackage{url}                        			% nicely format url breaks
\RequirePackage[inactive]{srcltx}		 				% necessary to use forward and inverse searching in DVI
\RequirePackage{relsize}                    			% font sizing hierarchy
\RequirePackage{booktabs}                   			% professional looking tables


% make sure this package is listed last
\RequirePackage[pdftex,plainpages=false,pdfpagelabels=true,breaklinks=true,pagebackref]{hyperref} % for pdf bookmarks
%----------------------------------------------------------------------------------------------------%
% rename Bibliography to Refrences, comment out to return to default
\renewcommand{\bibname}{References}
%----------------------------------------------------------------------------------------------------%
% define theorem, corollary, and lemma environments
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
%----------------------------------------------------------------------------------------------------%
% allow empty pages before chapters (i.e. no page numbers)
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}
\let\cleardoublepage\clearemptydoublepage
%----------------------------------------------------------------------------------------------------%
\hypersetup{%
	bookmarksnumbered = true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfsubject={\@dept},
	pdfkeywords={\@keywords},
	pdfpagelayout=SinglePage,
    bookmarksopen=False,
	%pdfview=FitV,
	pdfborder=0 0 0, 		% make all links invisible, so the pdf looks good when printed	
    pdffitwindow=true,      % window fit to page when opened
    %pdfstartview={FitV},   % fits the width of the page to the window
    pdfcreator={\@author},  % creator of the document
    pdfnewwindow=true,      % links in new window
    colorlinks=true,        % false: boxed links; true: colored links
    linkcolor=blue,         % color of internal links
    citecolor=magenta,      % color of links to bibliography
    filecolor=magenta,      % color of file links
    urlcolor=cyan           % color of external links
}
%----------------------------------------------------------------------------------------------------%
\geometry{
    a4paper,
    left = 1.5in,
    right = 1.0in,
    top = 1.0in,
    bottom = 1.375in
}
%\hyphenation{example, pa-ra-me-ter} % Over-ride Latex hyphenation, define hyphenated words
\hyphenpenalty=5000	% reduce hyphenation as much as possible
\tolerance=1000     % goes with the previous command
% Widow/orphan protection
\clubpenalty=10000    % Minimize orphans orphans(eliminate 10000)
\widowpenalty=10000   % Minimize widows
\brokenpenalty=10000  % Do not allow hyphen across pages
% Use cool footnotes
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\raggedbottom
\pagestyle{plain}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeTitlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeTitlePage} {
	\thispagestyle{empty}
	\begin{spacing}{1.5}
	\vspace*{0.3in}
	\begin{center}
		\includegraphics[width=2cm]{ucd.eps}

		\huge \bf
		\@title
		
        \vfill
	
		\Large \rm
		\@author \@currentDegree

		\vfill

		\normalsize
        \ifnum\@documentID=\thesisID {
			A thesis submitted to \@university \\ in fulfilment of the requirements for the degree of
			\bigskip
			
			\Large			
			\textbf{\@degree}
		} 
		\else {
            A Dissertation \\ Presented for the	\emph{\@degree}
        } \fi
		
		\bigskip

		\normalsize
		College of \@college \\
		School of \@dept \\

		\vfill

		\begin{tabular}{r l}
			\emph{Head of School:} &\@headSchool \\
			\emph{Supervisor:} &\@supervisor \\
			\emph{Co-supervisor:} &\@coSupervisorA \\
			% you can add more co-supervisors here
			\emph{Nominating Professor:} &\@nomProf \\
		\end{tabular}
		
		\vfill		
		
		\@graduationMonth\ \@copyrightYear
	\end{center}
    \end{spacing}
	\cleardoublepage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		makeApprovalPage: this macro will make the approval page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\newcommand {\makeApprovalPage} {
%	\thispagestyle{empty}
%	\begin{spacing}{1.1}
%    	\noindent To the Graduate Council:
%
%    	\noindent I am submitting herewith a \@theDocumentType\ written by \@author \, entitled ``\@title.''
%    	I have examined the final paper copy of this \@theDocumentType\ for form and
%    	content and recommend that it be accepted in partial fulfillment
%    	of the requirements for the degree of \@degree, with a major in \@major.
%    	\vspace*{.35in} \noindent
%    	\newline
%    	\hspace*{3.5in}\underline{\hspace*{2.5in}}
%    	\newline
%    	\hspace*{3.5in}\@majorProfessor, Major Professor %
%    	\begin{singlespace}
%    		\noindent We have read this \@theDocumentType
%    		\newline  and recommend its acceptance:
%            \addCommitteeMember{\@committeeMemberA}
%            \addCommitteeMember{\@committeeMemberB}
%            \ifnum\@numberOfCommitteeMembers>2
%                \addCommitteeMember{\@committeeMemberC}
%            \fi
%            \ifnum\@numberOfCommitteeMembers>3
%                \addCommitteeMember{\@committeeMemberD}
%            \fi
%            \ifnum\@numberOfCommitteeMembers>4
%                \addCommitteeMember{\@committeeMemberE}
%            \fi
%            \vfill
%            {\noindent \hspace*{2.65in}Accepted for the Council:
%            \\[20pt]
%        	\hspace*{2.65in}\underline{\hspace*{2.5in}}
%            \newline
%    		\hspace*{2.65in}\@viceProvost
%            \\[6pt]
%    		\hspace*{2.6in} Vice Provost and Dean of the Graduate School}
%    	\end{singlespace}
%    \end{spacing}
%	\pagebreak%
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		makeETDApprovalPage: this macro will make the ETD approval page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\newcommand {\makeETDApprovalPage} {
%	\thispagestyle{empty}
%    \begin{spacing}{1.1}
%    	\noindent To the Graduate Council:
%
%    	\noindent I am submitting herewith a \@theDocumentType\ written by \@author \, entitled ``\@title.''
%    	I have examined the final electronic copy of this \@theDocumentType\ for form and
%    	content and recommend that it be accepted in partial fulfillment
%    	of the requirements for the degree of \@degree, with a major in \@major.
%    	\vspace*{.05in} \noindent
%    	{\begin{flushright} \@majorProfessor, Major Professor \end{flushright}} %
%        \vspace*{.1in} \noindent
%    	\begin{singlespace}
%        	\noindent We have read this \@theDocumentType
%        	\newline  and recommend its acceptance:        	
%            \addCommitteeMemberETD{\@committeeMemberA}
%            \addCommitteeMemberETD{\@committeeMemberB}
%            \ifnum\@numberOfCommitteeMembers>2
%                \addCommitteeMemberETD{\@committeeMemberC}
%            \fi
%            \ifnum\@numberOfCommitteeMembers>3
%                \addCommitteeMemberETD{\@committeeMemberD}
%            \fi
%            \ifnum\@numberOfCommitteeMembers>4
%                \addCommitteeMemberETD{\@committeeMemberE}
%            \fi
%            \vfill
%                \noindent \hspace*{2.65in}Accepted for the Council:
%                \newline
%                \\[-2pt]
%                \noindent \hspace*{2.65in}\@viceProvost
%                \\[-8pt]
%            	\noindent \hspace*{2.65in}\underline{\hspace*{2.5in}}
%                \newline		
%                \newline
%        		\hspace*{2.65in}Vice Provost and Dean of the Graduate School
%                \begin{center}
%                    (Original signatures are on file with official student records.)
%                \end{center}
%    	\end{singlespace}
%    \end{spacing}
%	\pagebreak%
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\addCommitteeMember}[1] {
	\vspace*{.3in}%
    \newline%
	\underline{\hspace*{2.5in}}%
	\\[8pt]%
	\noindent #1%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\addCommitteeMemberETD}[1] {
    \vspace*{.25in}%
    \newline%
	\noindent #1%
    \\[-8pt]%
	\underline{\hspace*{2.5in}}%
    \newline%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeAppendixPage}{
    \newpage
    \vspace*{2.0in}
    \begin{center}\Huge \bf{Appendix} \end{center}
    \newpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeBibliographyPage}{
    \newpage % create a new page for the bibliography title
    \addToTOC{References} % add bibliography to table of contents
    \vspace*{2.0in} % move down the page 2.0 inches
    \begin{center}\Huge\bf{References}\end{center} % make the bibliography title
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToTOC: macro that adds an entry to the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToTOC}[1] {
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{#1}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToPDFBookmarks: macro that adds a bookmark to the PDF file
%                   without including it in the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToPDFBookmarks}[3] {
	\cleardoublepage
	\phantomsection
	\pdfbookmark[#1]{#2}{#3}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeCopyrightPage: this macro will make the copyright page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeCopyrightPage} {
    %\thispagestyle{empty}
    \phantom{.}
    \vspace*{4in}
    \begin{center}
        \copyright\ by \@author, \@copyrightYear \\
        All Rights Reserved.
    \end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput 
