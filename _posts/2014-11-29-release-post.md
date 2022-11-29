---
leyout: post
title:  tDiary-4.1.0 リリース
date: 2014-11-30 02:12:12 +0900
categories:
  - release
  - 4.1
---
tDiary 4.1.0 をリリースします。互換性を維持したままディレクトリ構成を大きく変更し、最近のRuby製Webアプリケーションのスタイルに準拠しました。また、プラグイン用のストレージを実装しました。

### tDiary-4.0.5 からの変更点

#### 本体(tdiary-core)の変更点

##### 機能変更
* Ruby製Webアプリケーションの標準的なディレクトリ構成に変更 (ライブラリをlib配下に移動、skelをviewsに変更)
* プラグイン用のストレージ・インタフェースを実装
* plugin/makerss.rb: プラグイン用のストレージに対応
* plugin/category.rb: プラグイン用のストレージに対応

##### バグ修正
* 絵文字変換で存在する絵文字のみを対象にする

#### contrib(tdiary-contrib)の変更点

##### 機能変更・追加
* image-gallery.rb: fastimage利用に変更

