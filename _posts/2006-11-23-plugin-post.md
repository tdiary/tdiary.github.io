---
leyout: post
title:  ふたたび2.0安定版Amazonプラグインの更新
date: 2006-11-26 18:25:59 +0900
categories:
  - plugin
  - amazon
---
Amazon.co.jpのHTML構造変更に伴う動作不良が長らく続いていましたが、このたびtDiary 2.1系からAmazon Webサービスを利用したものを移植し、HTML構造の変更に影響を受けないものに置き換えました。

このAmazonプラグインは、近々リリースされるtDiary 2.0.3に同梱されますが、早めに使いたいという方は、CVSから入手してください。置き換えるべきファイルは以下の2つ(日本語環境の場合)です:

* [amazon.rb](http://tdiary.cvs.sourceforge.net/tdiary/plugin/amazon.rb?revision=1.27.2.5&view=markup&pathrev=Stable-2_0) (プラグイン本体)
* [ja/amazon.rb](http://tdiary.cvs.sourceforge.net/tdiary/plugin/ja/amazon.rb?revision=1.3.2.8&view=markup&pathrev=Stable-2_0) (日本語リソース)

2点の非互換がありますので、ご注意ください。2.0系は基本的に非互換を出さない方針ですが、amazon.co.jpのHTMLに今後も追従するのは不可能と判断し、このような決断をしました。ご容赦ください。

* Ruby 1.6系および1.8.1以前を使っている場合には、別途uconvライブラリが必要です(Ruby 1.8.2以降の場合には同梱のNKFライブラリを使うので支障ありません)。
* 書影サイズの大中小が変わっています。設定ページから好みのサイズに変更してください。

#### 追記
本プラグインは、tDiary 2.0.3に同梱されました。

