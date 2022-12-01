---
leyout: post
title: tDiary-4.1.3 リリース
categories:
  - release
  - 4.1
---
### tDiary-4.1.3

tDiary 4.1.3 をリリースします。このリリースでは、機能変更はなく不具合の修正が中心となっています。

### tDiary-4.1.2 からの変更点

#### 本体(tdiary-core)の変更点

##### 機能変更
* 機能変更はありません

##### バグ修正
* Rack環境にて初回のみ起動に失敗する問題を修正
* unicorn環境にてrecent_rssプラグイン使用時にSecurityErrorが発生する問題を修正

#### contrib(tdiary-contrib)の変更点

##### 機能追加・変更
* ツッコミをPushbulletで通知するcomment_purubulletプラグインを追加
* profileプラグインにてgravatarサービスをフルサポートした

##### バグ修正
* google_mapプラグインがフィードに出力するリンク先が誤っていた問題を修正
* tatsu_zineプラグインが価格データと著者データの読み込みに失敗する問題を修正

