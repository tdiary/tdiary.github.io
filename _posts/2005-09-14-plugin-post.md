---
leyout: post
title:  Amazonプラグインの更新
categories:
  - plugin
  - amazon
---
2005年9月14日前後、Amazon.co.jpのHTMLフォーマット変更にともない、Amazonプラグインがうまく動作しなくなっています。以下の対応により動作するようになりますので、必要な方はご利用ください。

### 2.0系安定版をお使いの方
ja/amazon.rbの入れ替えになります。CVS上では[1.3.2.3](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/ja/amazon.rb?rev=1.3.2.3&view=markup)が対応版になります。もしくは55行目をエディタ等で下記のように修正してください。

 旧: @amazon_item_name = /^Amazon.co.jp： (.*)<.*$/
 新: @amazon_item_name = /^Amazon.co.jp：(.*)$/

この修正のあと、設定画面からキャッシュの削除を実行するのをお忘れなく。

### 2.1系開発版をお使いの方
2.1.2公開後、開発版のamazon.rbは、HTMLを直接解析する方法からAmazon Webサービスを使うように変更になっています。一部表示上の非互換がありますが、基本的には入れ替えれば使えるようになっています(ruby 1.8.2以降が必須です)。

[ViewCVS上](http://cvs.sourceforge.net/viewcvs.py/tdiary/plugin/)から、最新のamazon.rbおよびja/amazon.rbをダウンロードし、従来のファイルと置き換えてください。

置き換え後は、設定画面にて書影のサイズ(非互換があります)などの調整をしてください。

