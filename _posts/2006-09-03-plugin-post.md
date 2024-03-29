---
leyout: post
title:  Amazonプラグインの更新
categories:
  - plugin
  - amazon
---
**このエントリは古くなっています。新しい情報は[ふたたび2.0安定版Amazonプラグインの更新](http://www.tdiary.org/20061123.html)を参照してください。**

2006年9月初旬より、Amazon.co.jpのHTMLフォーマット変更にともない、Amazonプラグインがうまく動作しなくなっています。以下の対応により動作するようになりますので、必要な方はご利用ください。

### 2.0系安定版をお使いの方
ja/amazon.rbの入れ替えになります。CVS上では[1.3.2.7](http://tdiary.cvs.sourceforge.net/*checkout*/tdiary/plugin/ja/amazon.rb?revision=1.3.2.7&pathrev=Stable-2_0)が対応版になります(**追記**: 最初にリリースした1.3.2.6では不十分だったため、1.3.2.7をリリースしてあります)。

**注意**: amazon.rb本体ではなく、日本語リソースであるja/amazon.rb(jaディレクトリの下にあるamazon.rb)です。お間違えなきよう。

ファイルを入れ替えたあと、設定画面からキャッシュの削除を実行するのをお忘れなく。

### 2.1系開発版をお使いの方
tDiaryバージョン2.1.3以降のAmazonプラグインを使っている場合、キャッシュの削除が必要です。設定画面にて、「キャッシュの削除」にチェックを入れ、「OK」してください。

バージョン2.1.3よりも前のtDiaryを使っている場合には、最新の2.1.4にバージョンアップして下さい。2.1.3から、AmazonプラグインはAmazon Webサービスを使うように変更されており、Amazon.co.jpの形式変更の影響を受けにくくなっています。

