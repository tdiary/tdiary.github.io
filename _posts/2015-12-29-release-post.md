---
leyout: post
title: tDiary-4.2.1 リリース
categories:
  - release
  - 4.2
---
### tDiary-4.2.1

tDiary 4.2.1 をリリースします。このリリースではRuby2.3.0に対応するとともに、スマートフォン対応の強化や古くなった機能の別gem化などを行いました。

#### 本体(tdiary-core)の変更点

##### 機能追加・変更
* CoffeeScript対応をgem (tdiary-coffeescript) として分離
* ruby 2.3をサポート
* Rack環境で動かす場合、tdiary.confの設定(@index、@updateなど)を反映するようになった
* defaultテーマのスマートフォン対応を強化

##### 開発者向け変更点
* bower、gruntの利用をやめた
* 絵文字表示のライブラリをgemojiからemotに変更

##### バグ修正
* Rack環境でOmniAuthを使う場合の認証エラーを修正

#### contrib(tdiary-contrib)の変更点

##### 機能追加・変更
* previewプラグインが編集中に自動反映するようになった
* カテゴリ表示を軽量化するcategory-liteプラグインを追加
* profileプラグインからTwitterサポートを削除し、デフォルトをGravatarに変更
* google_analyticsプラグインのトラッキングコードを最新化
* rubykaigi2015プラグインを追加
* tdiarytimesプラグインを削除(swfファイルのソースコードがないため)
* instagr.rbを廃止してinstagram.rbに統合

##### バグ修正
* profileプラグインのGitHubサポートで使う画像の取得先を変更
* ohmsha_estoreプラグインをサイトリニューアルに追従

