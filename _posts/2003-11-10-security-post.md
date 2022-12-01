---
leyout: post
title:  tb-show.rbにおけるXSS脆弱性の修正
categories:
  - security
  - plugin
---
プラグイン集に含まれるTrackBackを表示するためのプラグイン「tb-show.rb」にXSS脆弱性が発見されました。

対象となるtb-show.rbは
:plugin直下のtb-show.rb:Revision 1.4以前
:plugin/trackbackの下のtb-show.rb:Revision 1.15〜1.19まで
です。

[こちら(sf.netのCVS)](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/tb-show.rb)
より修正版(Revision 1.5)を入手してください。

追記：tb-show.rbはRevision 1.4で言語リソースが分離されています。
(今のtb-show.rbでは)言語リソースは設定画面からTrackBack表示関連の設定を行なう場合にのみ必要です。必要な言語リソースファイルを以下から入手して、適切なディレクトリに保存してご利用ください。
* [日本語リソースファイル(ja)](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/ja/tb-show.rb)
* [英語リソースファイル(en)](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/en/tb-show.rb)

