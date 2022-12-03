---
leyout: post
title: tDiary-5.0.4 リリース
categories:
  - release
  - 5.0
---
tDiary 5.0.4 をリリースします。バグfixが主な変更です。また、サポートするrubyのバージョンに変更があります。

### 本体(tdiary-core)の変更点

#### 機能追加・変更
* ruby 2.4をサポートし、2.1をサポート対象外にした
* 各種プラグイン内で利用しているサービスのURLをhttpsのものに変更
* spamフィルタリングサービスを変更(sc.surbl.org → multi.surbl.org)

#### 開発者向け変更点
* ampプラグインを拡張可能に変更(google_analyticsプラグイン対応)

#### バグ修正
* テーマ設定でCSSの直接指定ができなくなっていたのを修正
* spamフィルタから存在しないフィルタリングサービスを削除
* ampプラグインがtDiaryの標準的なURLで動作しないのを修正

### theme(tdiary-theme)の変更点

(変更なし)

### contrib(tdiary-contrib)の変更点

#### 機能追加・変更
* ruby 2.4をサポートし、2.1をサポート対象外にした
* google_analyticsプラグインをAMP対応
* picasaプラグインから編集サポート機能を削除(引き続き表示は可能)

