---
leyout: post
title: tDiary-5.0.1 リリース
categories:
  - release
  - 5.0
---
### tDiary-5.0.1

tDiary 5.0.1 をリリースします。主に高速化とバグ修正が今回の更新です。

#### 本体(tdiary-core)の変更点

##### 機能追加・変更
* previewプラグインで入力フォームとプレビューを横並びできるようにして、contribからcoreに移動
* amazonプラグインの高速化 (Gemfile.localにoga gemを追加した場合)
* calendarプラグイン、calendar2プラグインの高速化
* プラグインの読み込みを高速化
* 配布パッケージからsprocketsを削除

##### 開発者向け変更点
* パッケージのリリース先をGitHubに変更

##### バグ修正
* 新しいcategoryプラグインの互換性を向上

#### contrib(tdiary-contrib)の変更点

##### 機能追加・変更
* image_gpsプラグイン、google_mapプラグインをhttps対応
* slideshowプラグインを追加
* flickrプラグインの高速化(Gemfile.localにoga gemを追加した場合)と、画像サイズの追加
* socialbuttonプラグインのはてなブックマーク対応を最新化
* previewプラグインをcoreに移動
* steamプラグインを追加

##### バグ修正
* 新しいcategoryプラグインをcategory_to_tagcloudと併用した場合のエラーを抑制

