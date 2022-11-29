---
leyout: post
title:  comment_rank.rbにおけるXSS脆弱性の修正
date: 2003-11-11 11:45:16 +0900
categories:
  - security
  - plugin
---
プラグイン集に含まれるツッコミランキングを表示するためのプラグイン「comment_rank.rb」にXSS脆弱性が発見されました。
対象となるcomment_rank.rbは，Revisionが1.2以前のものです。
tDiary安定版である1.4系に含まれるものも、この脆弱性を持っています。

[こちら(sf.netのCVS)](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/comment_rank.rb)より修正版(Revision 1.3)を入手してください。

