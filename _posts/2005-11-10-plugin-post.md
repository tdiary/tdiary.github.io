---
leyout: post
title:  Amazonプラグインの更新
date: 2006-09-03 15:10:33 +0900
categories:
  - plugin
  - amazon
---
2005年11月初旬より、Amazon.co.jpのHTMLフォーマット変更にともない、Amazonプラグインがうまく動作しなくなっています。以下の対応により動作するようになりますので、必要な方はご利用ください。

### 2.0系安定版をお使いの方
ja/amazon.rbの入れ替えになります。CVS上では[1.3.2.5](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/ja/amazon.rb?rev=1.3.2.5&only_with_tag=Stable-2_0&view=markup)が対応版になります。

ファイルを入れ替えたあと、設定画面からキャッシュの削除を実行するのをお忘れなく。

### 2.1系開発版をお使いの方
バージョン2.1.3から、amazonプラグインはAmazon Webサービスを使うようになっています。このため、今回のHTMLフォーマット変更の影響は受けません。2.1.2以前の開発版をお使いの方は、2.1.3にアップデートすることをお勧めします。

