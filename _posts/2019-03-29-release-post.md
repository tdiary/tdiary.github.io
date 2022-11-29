---
leyout: post
title: tDiary-5.0.12 リリース
date: 2020-03-29 22:21:09 +0900
categories:
  - release
  - 5.0
---
tDiary 5.0.12 をリリースします。小規模な修正や依存パッケージの更新が主な変更です。また、2日ほど早いですがruby 2.3のサポートを終了します。なお本体(core)のgemのみ「5.0.12.1」と枝番がついていますが、リリースミスのリカバリのためなので、中身は5.0.12です。

### 本体(tdiary-core)の変更点
#### 機能追加・変更
* ruby 2.3サポートを終了
* amazonプラグインのデフォルトイメージをhttps対応

#### 開発者向け変更
* sprockets依存を排除

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
* とくになし

### contrib (tdiary-contrib)の変更点
#### 機能追加・変更
* google_mapプラグイン: API変更にともなうAPI keyの指定

