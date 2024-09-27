---
leyout: post
title:  tDiary 1.5.7リリース
categories:
  - release
---
開発版tDiary 1.5.7をリリースしました。[ダウンロード](20021112)からどうぞ。

フィルタ機能の追加と、カテゴリ機能の強化が主な変更点です。このバージョンは、2.0のリリース候補になります。今後は大きな機能追加はせず、バグ修正のみで2.0をリリースします。

**注意**: 5/5 23:10ごろ、makelirs.rbプラグインのバグ修正のため、再リリースしました。ご注意ください。

### 本体(core)
本体で追加・変更されたのは以下の機能です。

* フィルタ機能
  * ツッコミとリンク元に対してフィルタリングルールを追加できる
  * 標準では従来と同等の制限がされている
* カテゴリ機能強化
  * インデックスを作成することで、高速化、高機能化しました
* プラグイン選択仕様変更
  * 複数のプラグインパスを指定した場合、同名のプラグインファイルがあっても最初に見つかった方を採用します                                    
* misc配下の一部ツールをcontribパッケージ(後述)に移動
* 編集画面でツッコミのメールアドレス表示
* プラグイン作成の機能向上
  * update_procを最後に呼ぶようになった(プラグインファイル名の影響排除)
  * update_proc内ではセキュアモードの影響を受けなくなった
  * Config#base_urlメソッドの追加
* misc/jtime.rb削除(pluginのjdate.rbに)
* 各種spam/bot対策追加
* バグ修正多数

### プラグイン(plugin)

* edit.rb: 削除(本体に取り込み)
* amazon.rb: 設定項目拡充
* output_rdf.rb: イメージ指定
* referer_scheme.rb: リンク元置換の拡張機能、追加
* recent_trackback3.rb: 最近のTrackBack、追加
* trackback/bookmarklet.js: TrackBack省力化のためのBookmarklet、追加
* category.rb: インデックス対応、カテゴリアイコン
* tb-send.rb: セクション指定TrackBack、複数サイトへのTrackBack
* highlight.rb: CSS対応、デフォルト色変更

### テーマ(theme)

* 追加されたテーマ
  * bluely
  * gray2
  * old-pavement
* href属性のないaエレメントで色が変わらないようにした(一部例外あり)

### BlogKit

* whatsnew-list.rb: 設定画面サポート、生成するRDFをよりよく
* blog-style.rb: tb-send.rbプラグインのセクション別TrackBackに対応(無効化)

### contrib

本体やプラグイン集に含まれないツールやプラグイン、スタイルなどを含んだcontribパッケージを新設しました。contribパッケージは本体のバージョンと連動しません。常に最新版がリリースされています。

1.5.7リリース現在、contribパッケージに含まれているのは以下になります。

* google_adsenseプラグイン
* hatenaスタイル
* posttdiary.rb: メールからの日記投稿
* tdiary-mode: Emacsから日記更新
* tdiary-vim: vimから日記更新
* tdiarysearch: 全文検索

