---
leyout: post
title:  tDiary 2.0.3リリース
categories:
  - release
---
tDiary 2.0.3(安定版)をリリースしました。

このリリースの目的は、主に脆弱性対策です。脆弱性の内容については[脆弱性に関する報告(2006-11-26)](20061126.html)をご覧下さい。対象となるバージョンをお使いの方は、最新版へのバージョンアップを強く推奨します。

→[ダウンロード](http://www.tdiary.org/20021112.html)

2.0.2からの主な変更内容は、以下の通りです。

### tDiary本体(core)
* 設定ページにおけるクロスサイト・スクリプティング脆弱性に対応
* Rubyの対象バージョンが1.6.7以降になった
* SoftBank携帯がモバイルモードの対象になった

### プラグイン集(plugin)
* image.rb: 画像のURLを絶対パスに変更
* squeeze.rb: CGIモードでの実行がエラーになっていたのを修正
* counter.rb: Windows上での動作対応
* amazon.rb: Amazon Webサービスを利用するように変更(非互換があります→[参照](20061123.html))
* makerss.rb: サブタイトルがない場合に「no title」を設定
* disp_referrer.rb: Googleキャッシュに対応

### Blogkit
* plugin/blog-category.rb: コメント状態の変更後にタイトルが化ける問題を修正
* plugin/whatsnew-list.rb: RSS出力に関するいくつかのバグを修正

