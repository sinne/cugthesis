% !TEX encoding = System
%%
%% This file `CUGthesis.cls', which is written by Yang Bo based on `CASthesis.cls',
%% is the configuration file of the CUGthesis package with LaTeX2e.
%%
%% Author: Yang Bo, Institute of Geophysics & Geomatics, China Univ. of Geoscience, Wuhan, China.
%% Version: 0.1
%% Date: 2011/04/23
%% Copyright 2011-2015
%% Special thanks to Dr. Linyun Wu and Dr. Yinnian Wu
%% 
%% This file was generated from file(s) of the CUGthesis package project.
%% ----------------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CUGthesis}
  [2011/04/23 v0.1 CUGthesis document class]
%%学士,硕博选项
\newif\if@doctor\@doctortrue
\newif\if@master\@masterfalse
\newif\if@bachelor\@bachelorfalse

\DeclareOption{doctor}{\@doctortrue}
\DeclareOption{master}{\@mastertrue\@doctorfalse}
\DeclareOption{bachelor}{\@bachelortrue\@doctorfalse}
%%基金信息选项
\newif\ifCUGT@fundinfo \CUGT@fundinfotrue
\DeclareOption{nofundinfo}{\CUGT@fundinfofalse}
%%排版引擎选项
\newif\ifCUGT@dvips \CUGT@dvipsfalse
\DeclareOption{dvips}{\CUGT@dvipstrue}
\DeclareOption{dvipdfm}{\CUGT@dvipsfalse}
\DeclareOption{pdftex}{\CUGT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%%加载ctexbook文档类
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}[2005/11/25]
%%定义页面参数
\RequirePackage[paperheight=27.000 true cm,paperwidth=19.500 true cm,
top=2.5 true cm,bottom=2.5 true cm,left=2.4 true cm,right=2.4 true cm,
headsep=10pt]
{geometry}
%%加载宏包
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage{subfigure}
%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}  
%% caption packages
\RequirePackage{caption2}
%% enumitem package
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\RequirePackage{ccmap}
\RequirePackage{times}
%%以下为非必需宏包，可删减%%%
\RequirePackage{listings}
\RequirePackage{booktabs}

%%以上为非必需宏包，可删减%%%


%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCUGT@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
               citecolor=blue,%
              plainpages=false,%
            pdfstartview=FitH}

%%加载参数文件
\AtEndOfPackage{\makeatletter\input{CUGthesis.cfg}\makeatother}
%%自定义命令
%%图表
\renewcommand{\captionlabeldelim}{} %定义如  "图(表)2: 示例" 中的间隔符号,如 ":" ,这里定义为空
\renewcommand{\captionlabelsep}{\hspace{1em}} %定义图表编号与标题间的间隔距离
\renewcommand{\captionlabelfont}{\songti\zihao{-5}} %定义图表标签的字体
\renewcommand{\captionfont}{\songti\zihao{-5}} %定义图表标题内容的字体

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
%\bibliographystyle{plain}
\newcommand\CUGTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CUGT@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CUGTfiledate{#1}%
  \def\CUGTfileversion{#2}%
  \def\CUGTfileinfo{#3}}%
\expandafter\ifx\csname ver@CUGthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_CUGthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@CUGthesis.cls\endcsname}
\fi
\expandafter\CUGT@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CUGT@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CUGTunderline{\@ifnextchar[\CUGT@underline\CTEXunderline}
\newcommand\schoolnumber[1]{\def\CUGT@value@schoolnumber{#1}}
\newcommand\studentnumber[1]{\def\CUGT@value@studentnumber{#1}}
\newcommand\classification[1]{\def\CUGT@value@classification{#1}}
\newcommand\confidential[1]{\def\CUGT@value@confidential{#1}}
\newcommand\UDC[1]{\def\CUGT@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CUGT@value@serialnumber{#1}}
\newcommand\school[1]{\def\CUGT@value@school{#1}}
\newcommand\degree[1]{\def\CUGT@value@degree{#1}}
\renewcommand\title[2][\CUGT@value@title]{%
  \def\CUGT@value@title{#2}
  \def\CUGT@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CUGT@value@author{#1}}
\newcommand\advisor[1]{\def\CUGT@value@advisor{#1}}
\newcommand\fund[1]{\def\CUGT@value@fund{#1}}
\newcommand\advisorinstitute[1]{\def\CUGT@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\CUGT@value@major{#1}}
\newcommand\submitdatechs[1]{\def\CUGT@value@submitdatechs{#1}}
\newcommand\submitdate[1]{\def\CUGT@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CUGT@value@defenddate{#1}}
\newcommand\institute[1]{\def\CUGT@value@institute{#1}}
\newcommand\chairman[1]{\def\CUGT@value@chairman{#1}}
%%自定义参考文献上标引用
\newcommand{\ucite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}  % 方法2
%%自定义frontmatter格式
\newif\if@frontmatter\@frontmattertrue
\renewcommand\frontmatter{%
\cleardoublepage
\@frontmattertrue
\@mainmatterfalse
\setcounter{page}{1}
\pagenumbering{Roman}
\pagestyle{plain}{}
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}
}
%%自定义mainmatter格式
\renewcommand\mainmatter{%
\cleardoublepage
\@frontmatterfalse
\@mainmattertrue
\setcounter{page}{1}
\pagenumbering{arabic}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@author :~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@author :~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
%%正文页眉双线
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.4pt}}%
\rule[0.7\baselineskip]{\headwidth}{0.4pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}
\makeatother%
}
%%设置目录格式  
\setcounter{tocdepth}{3} \setcounter{secnumdepth}{3}
\dottedcontents{chapter}[3.5em]{\songti\zihao{5}}{4em}{0.5pc}
\dottedcontents{section}[5.5em]{\songti\zihao{5}}{3em}{0.5pc}
\dottedcontents{subsection}[6.1em]{\songti\zihao{5}}{1.7em}{0.5pc}  
%%定义章节标题格式
\renewcommand\chaptername{第\CJKnumber{\value{chapter}}章}
\renewcommand{\thesection}{\S~\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\hspace{-3ex}\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%定义封面及固定信息页面
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%中文封面1
\if@bachelor
	\newcommand\makecover{%
	}%
\else
	\newcommand\makecover{%
	  \cleardoublepage
	  \thispagestyle{empty}
	  \begin{center}
	    \songti\zihao{3}
	      \CUGT@label@classification~\CUGTunderline[70pt]{\CUGT@value@classification}
	        \hfill
	      \CUGT@label@confidential~\CUGTunderline[70pt]{\CUGT@value@confidential} \\
		  \CUGT@label@UDC~\CUGTunderline[75pt]{\CUGT@value@UDC} \hfill \, \\
		\vspace{3em}
	      \heiti\zihao{-1} \CUGT@value@school \\
	      \CUGT@value@degree\CUGT@label@thesis \\
		\vspace{3em}
	      \heiti\zihao{2} ~\CUGT@value@title~ \\
		\vspace{3em}
	    \heiti\zihao{3}
	    \def\tabcolsep{1pt}
	    \def\arraystretch{1.5}
	    \begin{tabular}{lll}
	      \CUGT@label@author & ~\CUGT@value@author &\,\,\,\,\,\,
		\\
	      \CUGT@label@major & ~\CUGT@value@major  &
	    \\
	      \CUGT@label@advisor & ~\CUGT@value@advisor &
		\\
		  \CUGT@label@institute & ~\CUGT@value@institute &
	    \end{tabular}
		\vskip \stretch{0.6}
		\songti\zihao{3}
	      \CUGT@value@submitdatechs
		\vspace{1em}	
	  \end{center}
	}%
\fi

%%%中文封面2
\if@bachelor
	\renewcommand\maketitle{%
	 \cleardoublepage
		\thispagestyle{empty}
		\begin{center}
		\includegraphics[width=1.5in]{../figures/school_logo.png}

		\vspace{1em}
		\heiti\zihao{1}本科毕业论文（设计）
		
		\songti\zihao{5}\vspace{6em}
		\songti\zihao{4}题目：~\CUGTunderline[250pt]{}

		\hspace{3em}~\CUGTunderline[250pt]{}
		\vspace{1em}

		姓\hspace{2em}名：~\CUGTunderline[7em]{}\hspace{2em}学号：~\CUGTunderline[70pt]{}

		院（系）：~\CUGTunderline[7em]{}\hspace{2em}专业：~\CUGTunderline[70pt]{}

		指导老师：~\CUGTunderline[7em]{}\hspace{2em}职称：~\CUGTunderline[70pt]{}

		评~ 阅~ 人：~\CUGTunderline[7em]{}\hspace{2em}职称：~\CUGTunderline[70pt]{}

		\vspace{5em}
		~\CUGTunderline[3em]{2011}年~\CUGTunderline[3em]{06}月
		\end{center}

		%\begin{figure}[htbp]
		%\centering\includegraphics[width=1.5in]{../figures/school_logo.png}
		%\caption{}\label{}
		%\end{figure}
	}%
\else
	\renewcommand\maketitle{%
	  \cleardoublepage
	  \thispagestyle{empty}
	  \begin{center}
	    \songti\zihao{3}
	      \CUGT@label@schoolnumber~\CUGT@value@schoolnumber
	        \hfill
	      \CUGT@label@studentnumber~\CUGT@value@studentnumber
	    \vskip \stretch{1.8}
	      \heiti\zihao{2} \CUGT@value@school \\
	      \CUGT@value@degree\CUGT@label@thesis
	    \vskip \stretch{0.9}
	      \heiti\zihao{3} ~\CUGT@value@title~
	    \vskip \stretch{1}
	    \songti\zihao{3}
	    \def\tabcolsep{1pt}
	    \def\arraystretch{1.0}
	    \begin{tabular}{lll}
	      \CUGT@label@author & ~\CUGT@value@author &\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,
		\\
	      \CUGT@label@major & ~\CUGT@value@major  &
	    \\
	      \CUGT@label@advisor & ~\CUGT@value@advisor &
	    \end{tabular}
		\vskip \stretch{2.9}
		 \ifCUGT@fundinfo
		\songti\zihao{5}
	      \CUGT@label@fundhead \CUGT@value@fund \CUGT@label@fundtail
		\vskip \stretch{0.6}
		\fi
		\songti\zihao{3}
	      \CUGT@value@submitdatechs
		\vspace{1em}	
	  \end{center}
	}%
\fi

\if@bachelor
	\newcommand\englishtitle[1]{\def\CUGT@value@englishtitle{#1}}
	\newcommand\englishauthor[1]{\def\CUGT@value@englishauthor{#1}}
	\newcommand\englishadvisor[1]{\def\CUGT@value@englishadvisor{#1}}
	\newcommand\englishinstitute[1]{\def\CUGT@value@englishinstitute{#1}}
	\newcommand\englishdate[1]{\def\CUGT@value@englishdate{#1}}
	\newcommand\englishdegree[1]{\def\CUGT@value@englishdegree{#1}}
	\newcommand\englishmajor[1]{\def\CUGT@value@englishmajor{#1}}
	\newcommand\makeenglishtitle{%
	}
\else
%%%英文封面
	\newcommand\englishtitle[1]{\def\CUGT@value@englishtitle{#1}}
	\newcommand\englishauthor[1]{\def\CUGT@value@englishauthor{#1}}
	\newcommand\englishadvisor[1]{\def\CUGT@value@englishadvisor{#1}}
	\newcommand\englishinstitute[1]{\def\CUGT@value@englishinstitute{#1}}
	\newcommand\englishdate[1]{\def\CUGT@value@englishdate{#1}}
	\newcommand\englishdegree[1]{\def\CUGT@value@englishdegree{#1}}
	\newcommand\englishmajor[1]{\def\CUGT@value@englishmajor{#1}}
	\newcommand\makeenglishtitle{%
	  \cleardoublepage
	  \thispagestyle{empty}
	  \begin{center}
		\normalsize\zihao{-3} \CUGT@label@englishstatement \\
		\vspace{5em}
	      \bf\zihao{-2} \CUGT@value@englishtitle
	    \vskip \stretch{1}
		\normalfont\zihao{4}
	    \def\tabcolsep{1pt}
	    \def\arraystretch{1.0}
	    \begin{tabular}{rl}
	      \CUGT@label@englishauthor &~~\CUGT@value@englishauthor \\
	      \CUGT@label@englishmajor  &~~\CUGT@value@englishmajor \\
	      \CUGT@label@englishadvisor&~~\CUGT@value@englishadvisor \\
	    \end{tabular} 
	    \vskip \stretch{2}
	      \normalfont\zihao{-3} \CUGT@label@englishschool \\
	    \vskip 5pt
	      \normalfont\zihao{-3} \CUGT@label@englishadress
	  \end{center}
	  \clearpage
	  \if@twoside
	    \thispagestyle{empty}
	    \cleardoublepage
	  \fi
	}%
\fi

\if@bachelor
	%%% 原创性声明
	\newcommand\makestatement{%
	  \cleardoublepage
	  \thispagestyle{empty}
	 \begin{center}	
		\heiti\zihao{-3}学位论文原创性声明
		\vspace{1em}
	 \end{center}
	 \songti\zihao{-4}\hspace{2em} 本人郑重声明：所呈交的论文是本人在导师的指导下独立进行研究所取得的研究成果。除了文中特别加以标注引用的内容外，本论文不包括任何其他个人或者集体已经发表或撰写的成果作品。本人完全意识到本声明的法律后果由本人承担。	
	\vspace{1em}


	\hspace{6em}作者签字： \hspace{10em}年\hspace{1em}月\hspace{1em} 日
	\vspace{2em}
	}
	\newcommand\makeauthorization{%
		\begin{center}
			\heiti\zihao{-3}学位论文版权使用授权书
			\vspace{1em}
		\end{center}
		\songti\zihao{-4}\hspace{2em}本学位论文作者完全了解学校有关保障、使用学位论文的规定，同意学校保留并向有关学位论文管理部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权省级优秀学士学位论文评选机构将本学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。

		\hspace{2em}	本学位论文属于

		\hspace{8em}1、保密 $\text{\rlap{}}\square$，在~\CUGTunderline[70pt]{}年解密后适用于本授权书。
		
		\hspace{8em}2、不保密  $\text{\rlap{$\checkmark$}}\square$。

		\hspace{8em}（请在以上相应方框内打“√”）

		\vspace{1em}
		\hspace{6em}作者签名： \hspace{10em}年\hspace{1em}月\hspace{1em} 日

		\vspace{1em}
		\hspace{6em}导师签名： \hspace{10em}年\hspace{1em}月\hspace{1em} 日		
	}
\else
	%%%原创性声明
	\newcommand\makestatement{%
	  \cleardoublepage
	  \thispagestyle{empty}
	  \begin{center}	
		\heiti\zihao{-2}中国地质大学（武汉）研究生学位论文原创性声明
		\vspace{1em}
	  \end{center}
	  \songti\zihao{-4}\hspace{2em} 本人郑重声明：本人所呈交的\CUGT@value@degree学位论文《\CUGT@value@titlemark》，
	  是本人在导师的指导下，在中国地质大学（武汉）攻读\CUGT@value@degree学位期间独立进行研究工作所取得的成果。
	  论文中除已注明部分外不包含他人已发表或撰写过的研究成果，对论文的完成提供过帮助的有关人员已在文中说明并致以谢意。
	  
	  
	本人所呈交的\CUGT@value@degree学位论文没有违反学术道德和学术规范，没有侵权行为，并愿意承担由此而产生的法律责任和法律后果。
	
	
	\vspace{2em}
	学位论文作者（签字）： \hspace{5em}         日期：　　年　　月　　日
	}
	
	%%%授权书
	\newcommand\makeauthorization{%
	  \cleardoublepage
	  \thispagestyle{empty}
	  \begin{center}	
		\heiti\zihao{-2}中国地质大学（武汉）学位论文使用授权书
		\vspace{2em}
	  \end{center}
	  \songti\zihao{4}\hspace{2em} 本人授权中国地质大学（武汉）可采用影印、缩印、数字化或其它复制手段保存本学位论文；
	  学校可向国家有关部门或机构送交本学位论文的电子版全文，编入有关数据库进行检索、下载及文献传递服务；
	  同意在校园网内提供全文浏览和下载服务。
	  
	\vspace{4em}
	\hspace{4em} 学位论文作者签名：\CUGTunderline[140pt]{}        \\    
	
	\hspace{4em} 日\hspace{6em}期：  \CUGTunderline[140pt]{\hspace{3em}年\hspace{2em}月\hspace{2em}日}
	}%
\fi
%%中文摘要  
\newenvironment{abstract}
  {%
  \cleardoublepage
  % \thispagestyle{empty}
  \begin{center}
  \heiti\zihao{3}\CUGT@value@title \\
  \vspace{1em}
  \songti\zihao{-4}\CUGT@label@authorshort~\CUGT@value@author \hspace{3em} \CUGT@label@advisorshort~\CUGT@value@advisor \\
  \vspace{1em}
  \songti\zihao{4}\CUGT@label@abstract
  \end{center}
  \hspace{1.3em}
  \songti\zihao{5}
  }{}
%%中文关键词  
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti\zihao{5} \CUGT@label@keywords} \heiti\zihao{5}#1}
  
%%英文摘要  
\newenvironment{englishabstract}
  {%
  \cleardoublepage
  % \thispagestyle{empty}
  \begin{center}
  \zihao{2}\CUGT@value@englishtitle \\
  \vspace{0.5em}
  \zihao{-4}\CUGT@label@englishauthor~\CUGT@value@englishauthor \hspace{3em} \CUGT@label@englishadvisor~\CUGT@value@englishadvisor \\
  \vspace{1em}
  \zihao{4}\MakeUppercase\CUGT@label@englishabstract
  \end{center}
  \hspace{2ex}
  \zihao{5}
  }{}

%%英文关键词
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf\zihao{5} \CUGT@label@englishkeywords} \zihao{5}#1}


%%
%% End of file `CUGthesis.cls'.
