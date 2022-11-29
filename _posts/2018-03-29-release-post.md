---
leyout: post
title:  tDiary-5.0.8 リリース
date: 2020-03-29 22:17:27 +0900
categories:
  - release
  - 5.0
---
tDiary 5.0.8 をリリースします。バグ修正や依存パッケージの更新が主な変更です。数日後にEOLがくるruby 2.2のサポートをやめました。また、開発中のRuby 2.6のサポートも開始しています。

### 本体(tdiary-core)の変更点
#### 機能追加・変更
* safeモードの全面廃止

#### バグ修正
* amazonプラグインで発生していたinsecure errorを抑止

#### 開発者向け変更点
* 開発用のDockerfileを用意(misc/docker-devel)
* 利用しているjQueryを3.2に更新

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
#### 機能追加・変更
* とくになし

#### バグ修正
* とくになし

### contrib (tdiary-contrib)の変更点
#### 機能追加・変更
* サービス停止にともないohmsha_estoreプラグインを無効化

#### バグ修正
* とくになし

