---
leyout: post
title:  tDiary-4.1.1 リリース
categories:
  - release
  - 4.1
---
tDiary 4.1.1 をリリースします。このリリースでは、機能変更はなく不具合の修正が中心となっています。なお、カテゴリプラグインを使用していて4.0.xからアップデートする場合は、設定画面にてカテゴリの再生成を実行してください。4.1.0からアップデートする場合は不要です。

### tDiary-4.1.0 からの変更点

#### 本体(tdiary-core)の変更点

##### 機能変更
* 機能変更はありません

##### バグ修正
* ruby-1.9.3環境にてcategory.rbプラグインにてカテゴリの再生成に失敗する問題を修正
* フルパッケージ版にて同梱のbundlerライブラリが動作しない問題を修正
* OmniAuthライブラリを使用したTwitter認証が動作しない問題を修正

#### contrib(tdiary-contrib)の変更点

##### 機能追加
* Googleユニバーサルアナリティクスに対応したgoogle_universal_analytics.rbプラグインを追加
* MathJax経由でTeXの数式を使用するmathjax.rbプラグインを追加

##### バグ修正
* socialbutton.rbプラグインにて対象セクションを厳密に判定するよう修正

