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
%%硕博选项
\newif\ifismaster\ismasterfalse
% \newif\ifismaster\ismastertrue
\DeclareOption{bachelor}{\thesistype{1}}
\DeclareOption{master}{\thesistype{2}}
\DeclareOption{doctor}{\thesistype{3}}
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
}

%%%中文封面2
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
}

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
}

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
