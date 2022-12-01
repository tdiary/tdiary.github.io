---
leyout: post
title:  tDiary 1.5.4リリース
categories:
  - release
---
tDiary 1.5.4をリリースしました。

更新フォームに機能を追加するプラグイン機能が加わり、絵日記やTrackBackといった新機軸のプラグインが使えるようになりました。その他にも新しいプラグインやテーマもたくさん追加されました。

### 本体
本体に追加されたのは以下の機能です。

* プレビュー機能
** 日記を公開する前に見栄えを確認できます
* ツッコミメールをプラグイン化
** ツッコミをメールで送る機能を、本体から分離してプラグインにしました。プラグイン集のcomment_mail-smtp.rbを導入してください
* 更新フォームに機能を追加するedit_procプラグイン、form_procプラグインの追加
** これに伴って絵日記プラグイン、TrackBackプラグイン等、新しい形のプラグインが使えるようになりました
* AirH" PHONEを携帯端末の対象に追加
* プラグイン開発者向けの新機能追加
** Pluginクラスに@plugin_files変数を追加
** 00default.rbにbot?プラグインを追加
* ruby 1.8.0 preview2に対応
* いくつかのバグの修正

### プラグイン
*以下の新しいプラグインが追加されました
** weather.rb - 今日の天気
** trackback - TrackBackの送信・受信・表示
** image.rb - 絵日記
** jdate.rb - 日付フォーマットで%Jで日本語の曜日
** comment_mai-smtp.rb, comment_mail-sendmail.rb, comment_mail-qmail.rb - ツッコミをメールでお知らせ
** referer-antibot.rb - 検索エンジンBOTにリンク元リストを見せない
** referer-utf8.rb - 検索エンジンからのリンク元表示の文字化け抑止
** a.rb: アンカー自動生成
* いくつかのプラグインでパラメタの非互換
** recent_list等、プラグイン展開を内部でもう一度行うものは、@options['apply_plugin']の値を見て自動的に展開するようになったため、パラメタに非互換があります

### テーマ
以下のテーマが追加されました。

* light-blue
* cat
* loose-leaf
* matcha
* citrus
* arrow
* puppy
* aoikuruma
* bright-green
* kaeru
* pale
* rain
* rectangle
* simple
* plum

### BlogKit
BlogKitの新しい機能は以下のとおりです。

* BlogRDスタイルサポート
* プラグインやサンプルconfファイルの日本語版を追加
* whatsnew_listプラグインがRDFの生成をサポート
* いくつかのプラグインでパラメタの非互換
** recent-entry等、プラグイン展開を内部でもう一度行うものは、@options['apply_plugin']の値を見て自動的に展開するようになったため、パラメタに非互換があります
* いくつかのバグを修正

