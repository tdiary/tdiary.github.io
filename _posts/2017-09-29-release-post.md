---
leyout: post
title:  tDiary-5.0.6 リリース
categories:
  - release
  - 5.0
---
tDiary 5.0.6 をリリースします。バグfixや依存パッケージの更新が主な変更です。

### 本体(tdiary-core)の変更点
#### 機能追加・変更
* サービス終了につきSqale向けの設定を削除

#### 開発者向け変更点
* 未使用のCoffeeScript向けrack middlewareを削除
* Bundler 1.15 / 1.16両対応

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
#### 機能追加・変更
* GFMスタイルに対応(bloggfmスタイル)

#### バグ修正
* Rack環境でwhatsnew_listプラグインが有効時に起動しなくなる

### contrib (tdiary-contrib)の変更点
#### 機能追加・変更
* PlantUMLプラグインを追加
* Googleフォトプラグインで複数選択を可能に
* Googleフォトプラグインで拡大・縮小率を指定可能に

