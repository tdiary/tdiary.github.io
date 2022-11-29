---
leyout: post
title:  開発版2.1.3リリース
date: 2005-09-29 00:06:37 +0900
categories:
  - release
---
開発版(unstable)の2.1.3をリリースしましたのでお知らせします。開発版リリースはその名の通り、現在開発中のバージョンです。さまざまな試行錯誤がなされるため、途中で大きく仕様が変わる可能性があります。そのあたりの覚悟ができている方のみご利用ください。

なお、開発版に関するフィードバックは、tDiary-develメーリングリストでお願いします。

→[ダウンロード](20021112)

2.1.3における変更点は以下の通りです:

### 本体(core)
#### 機能追加
* ツッコミspamフィルタ標準装備(plugin/10spamfilter.rb)
* title_procとsubtitle_procを追加。各スタイルも追従
* テーマ選択画面でJavaScriptを使ったサムネイル表示
* 編集モードに前後の日へのリンクを追加

#### 仕様変更 
* plugin/01sp.rbがplugin/50sp.rbへ名称変更(**旧名称のファイルは削除しないとエラーになります**)
* 設定画面のデザイン変更、プラグインをジャンル分け
* 文法を拡張した新Wikiスタイルを標準提供、インストール不要に(misc/style/wiki下に旧版が残っています)
* サイトアイコン(favicon)とサイトバナーを分離、設定画面で別々に指定可能に

#### バグ修正
* defaultio.rbのファイルロック漏れを修正

### プラグイン(plugin)
#### 機能追加
* ツッコミメール通知(comment_mail-*.rb)で、フィルタによって隠されたツッコミを配信するかどうか選択可能に
* rss-recent.rb追加。外部のRSSの内容を表示する、サイドバー向けアイテム
* calendar2.rb: image.rbと連携し、その日の画像を表示するモードを追加
* recent_comment3.rb: spamフィルタ対応
* recent_comment3.rb, recent_trackback3.rb: ツリービューをサポート
* tb-send.rb: BASIC認証を求めるPing URLに対応
* amazon.rb: デフォルト書影をカスタマイズ可能に
* amazon/amazonimg.rb追加: セキュアモード時に利用できるAmazonアクセスCGI
* makerss.rb: 編集画面に「ちょっとした変更」を追加

#### 仕様変更
* サイドバー向けプラグインが生成するHTMLを変更(core/theme/base.cssで吸収)
* 主要なプラグインが設定画面におけるジャンル分けに対応
* amazon.rb: Amazon ECSを使う方式に全面書き換え。設定画面で書影サイズを再設定する必要があります
* amazon.rb: 18歳以上オプション削除(Amazon ECS対応で不要になったため)
* windex.rb: contribパッケージに移動
* highlight.rb, append-css.rb: botアクセス時に動作抑制

#### バグ修正
* makelirs.rb: index.rbとupdate.rbが異なるパスにある時の問題を修正
* makerss.rb: <copyright>要素を<dc:rights>要素に変更
* makerss.rb: 空のツッコミが追加されるのを抑制
* image.rb, my-ex.rb: URLを絶対パスに
* squeeze.rb: CGIモードで動作しなかった問題を修正

### テーマ(theme)
* [はてなダイアリー](http://d.hatena.ne.jp/)から100を超えるテーマが寄贈
* その他、いくつかのテーマが追加(→[テーマギャラリー](20021001.html))

### BlogKit
#### 機能追加
* blog-category.rb: カテゴリリストを編集画面に追加(JavaScriptによる挿入に対応)
* title-link.rb: プラグイン追加。タイトル全体をPermalinkにする
* title-navi.rb: 編集画面での前後エントリへのリンク追加
* whatsnew-list.rb: 編集画面に「ちょっとした変更」を追加

#### 仕様変更
* blogwiki_style.rb: 新Wikiスタイルに対応
* blog-category.rb: title_procに対応
* *_style.rb: subtitle_procに対応
* recent-entry2.rb: 削除。recent-entry.rbに統合
* title-navi.rb: 編集画面の日付に関するフィールドを隠す(CSS対応ブラウザのみ)
* whatsnew-list.rb: サイトバナーやサイト説明に対応。設定画面で再設定の必要あり
* whatsnew-list.rb: RSS本文に「Comments(N) TrackBacks(N)」表記を追加

#### バグ修正
* blog-category.rb: 編集・ツッコミ表示変更後にタイトルを破壊する問題を修正
* whatsnew-list.rb: image.rb等の内容がずれるのを修正

### contrib (20050929)
* filter/comment_key: 追加。ツッコミに付加されたコメントキーをチェックするフィルタ
* filter/linkcheck.rb: 追加。TrackBack受信時、自サイトへのリンクがされているかどうかチェックするフィルタ
* plugin/accound_ad: 追加。AccountAutoDiscoveryプラグイン
* plugin/addbookmark: subtitle_procに対応、セクションごとにリンクを付加できるようになった
* plugin/image_gps: 「WGS84」という表記の測地系に対応
* plugin/image_gps: モバイルモードでのTOKYO測地系表示の問題を修正
* plugin/image_ex: 追加。image.rbの拡張プラグイン
* plugin/windex.rb: pluginパッケージから移動
* util/tdiary-mode: スタイル変更対応
* util/tdiary.vim: CSRF対策に対応

