# Introduction #

针对在MikTex下编译CUGThesis时的问题汇总。

# MikTex 2.8 #
## 依赖的模板，推荐安装下面模板的方式是，先编译，根据编译的错误提醒再进行安装。 ##
  * cjk
  * cjk-font
  * cjkpunct
  * etoolbox
  * ulem
  * zhmetrics
  * subfigure
  * natbib
  * hypernat
    1. hypernat并不能直接通过MikTex的源进行安装，需要在互联网上手动寻找hypernat的安装包；
    1. 下载到hypernat，将其解压缩到$(MikTex\_Install\_Dir)\tex\latex\hyperref下；
    1. 在MikTex的Settings程序（你可以在开始菜单中找到该程序）中，执行“refresh FNDB”和“update formats”；
# 重新编译。
  * enumitem
  * cct
    1. 如果没有安装cct，会提示ccmap.sty找不到
    1. cct 可以在ftp://ftp.cc.ac.cn/pub/cct/ 下载到。目前最新的版本地址为：[ftp://ftp.cc.ac.cn/pub/cct/cct-0.61803-2a-win32.zip](ftp://ftp.cc.ac.cn/pub/cct/cct-0.61803-2a-win32.zip)
## 安装上述模板后，还可能出现下述一些问题： ##
  * !pdfTex error: pdflatex (file gbksong59): Font gbksong59 at 1325 not found
> 该错误是由MikTex程序的内部目录问题引起。
    1. 在$(MikTex\_Install\_Dir)\fonts\下新建目录:sfd。
    1. 拷贝$(MikTex\_Install\_Dir)\ttf2tfm\base\目录下的文件复制到第一步新建的sfd目录中。
  * simfang.ttf not found
    1. 如果缺少这个字体，你需要到互联网上寻找一个simfang.ttf，然后将它复制到系统盘(比如c:\)的\WINDOWS\Fonts\目录下。