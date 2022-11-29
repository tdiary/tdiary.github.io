---
leyout: post
title: tDiary-5.0.5 リリース
date: 2020-03-29 22:15:49 +0900
categories:
  - release
  - 5.0
---
tDiary 5.0.5 をリリースします。バグfixや依存パッケージの更新が主な変更です。

### 本体(tdiary-core)の変更点

#### 機能追加・変更
* OGPタグの微調整(おもに ogp:image まわり)

#### 開発者向け変更点
* 利用しているjQueryを3.0に、jQueryUIを1.12に変更
* httpレスポンスのContent-Typeに「charset: UTF-8」を追加

#### バグ修正
* 古い.tdrファイルを読めなくなっていた不具合を修正
* 存在しない日の日記にアクセスするとAMPプラグインがエラーになるのを修正
* 絵文字のURLがHTTP固定になっていた問題を修正

### theme (tdiary-theme)の変更点

#### バグ修正
* gustav: スマートフォンでの閲覧時に画像のアスペクト比が狂う問題を修正

### contrib (tdiary-contrib)の変更点

#### 機能追加・変更
* Googleフォトプラグイン(google_photos)を追加
* ogpプラグイン: OGPタグの微調整(おもに ogp:image まわり)

#### バグ修正
* prettifyプラグイン: Google code-prettifyの仕様変更に追従
* mathjaxプラグイン: 参照先アドレスを最新の状況に追従
* tatsu_zineプラグイン: 達人出版会のサイト変更に追従
* pubooプラグイン: 文字コード判定に失敗して動作しなかったのを修正
* profileプラグイン: gravatarが動作しなかったのを修正
* nicovideoプラグイン: 日記がhttpsで運用されている場合でも動作するように変更(埋め込みプレイヤーは利用できません)

