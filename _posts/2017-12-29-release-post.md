---
leyout: post
title:  tDiary-5.0.7 リリース
date: 2020-03-29 22:16:59 +0900
categories:
  - release
  - 5.0
---
tDiary 5.0.7 をリリースします。バグfixや依存パッケージの更新が主な変更です。また、Ruby 2.5のサポートを開始しました。

**2017-12-31追記**: tdiary-5.0.7.tar.gzとtdiary-full-5.0.7.tar.gzにruby 2.5.0用の依存ライブラリが添付されていませんでしたので、この2つのパッケージのみ再リリースしました。

### 本体(tdiary-core)の変更点
#### 機能追加・変更
* ruby 2.5をサポート開始、2.1のサポートを終了
* youtubeプラグインで動画エリアのセンタリングがデフォルトに
* ドキュメント(スタイルとプラグイン)へのリンク先をGitHubに変更

#### バグ修正
* recent_listなどいくつかのプラグインで発生していたinsecure errorを抑止

#### 開発者向け変更点
* Microsoft Visual Studio Codeでデバッグ可能に

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
#### 機能追加・変更
* とくになし

#### バグ修正
* recent-entryプラグインで発生していたinsecure errorを抑止

### contrib (tdiary-contrib)の変更点
#### 機能追加・変更
* nicovideoプラグインのインラインプレイヤーでhttpsに対応
* comment_pushbulletプラグインで使うgemをruby-pushbulletからpushbullet_rubyに変更

#### バグ修正
* Googleフォトプラグインのサイズ指定を整数に

