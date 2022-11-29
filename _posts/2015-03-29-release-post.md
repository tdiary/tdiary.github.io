---
leyout: post
title:  tDiary-4.1.2 リリース
date: 2015-03-29 00:35:47 +0900
categories:
  - release
  - 4.1
---
tDiary 4.1.2 をリリースします。このリリースではクラウド対応を強化しました。PaaSサービスとして著名なHeroku上で、tDiaryを簡単にインストール、運用ができるようになっています。

また、最新のRuby2.2系をサポートするようになりました。同時に、メンテナンスが終了したRuby1.9.3はサポート対象外となります。

### tDiary-4.1.1 からの変更点

#### 本体(tdiary-core)の変更点

##### 機能追加
* Herokuボタンで簡単にtDiaryをインストールできます。既存環境からのデータ移行や、tDiaryのアップデートにも対応しています。詳しくは[tDiary.orgのアナウンス](http://www.tdiary.org/20150208.html)をご覧ください。

##### 機能変更
* Twitter認証に加えて、Facebook、Google、GitHubの認証が使えるようになりました。使い方は付属ドキュメントの[How to authenticate in rack](https://github.com/tdiary/tdiary-core/blob/master/doc/HOWTO-authenticate-in-rack.md)をご覧ください。
* Twitter認証にて、カンマ区切りで複数のユーザを指定できるようになりました。
* 外部認証 (OmniAuth) やMemchacheセッション管理 (Dalli) は、Gemfile.localに記述するだけで自動的に有効になります。従来のようにconfig.ruファイルを編集する必要はなくなりました。
* 標準のRackサーバをThinからWEBrickへと変更しました。Thin, Unicorn, PumaなどのWEBrick以外のRackサーバで運用したい場合は、Gemfile.localに記述してください。

##### バグ修正
* amazon.rbプラグインにて、プロキシサーバーに接続できなかった場合にリトライするようにしました。

##### 開発者向け変更点
* メール送信に使うライブラリをNet::SMTPからMail gemへ変更しました。
* 日記データを扱うための内部インタフェースとしてDiaryContainerを追加しました。CGIクラスを使わずに、プラグインから日記データを読めるようになります。
* 新しいプラグインインタフェースであるadd_startup_procを追加しました。add_startup_procはRackサーバ起動時に呼び出されます。

#### contrib(tdiary-contrib)の変更点

##### 機能追加
* RubyKaigiプラグインにRubyKaigi 2014バッジを追加

##### 機能変更
* WebブラウザからPicasaプラグインの設定を変更できるよう修正

##### バグ修正
* Googleマッププラグインにて、地図が表示されないことがある不具合を修正
* nicovideoにて、動画情報の読み込み方法を強化しました（エンコーディング情報を追加）
* instagramプラグインにて画像サイズの誤りを修正

