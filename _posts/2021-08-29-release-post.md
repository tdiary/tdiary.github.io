---
leyout: post
title: tDiary-5.1.7 リリース
categories:
  - release
  - 5.1
---
tDiary 5.1.7 をリリースします。本体に大きな変更・修正はありませんが、関連するライブラリのセキュリティ修正に対応しているので、Rack環境やDocker環境で動かしている方はアップデートを推奨します。

なお、Docker Hubの仕様変更に追従できておらず、まだDocker imageが更新できていません。後日更新し、[Twitter](https://twitter.com/tDiary)でお知らせします。もちろんご自分でimageをビルドすることは可能です。

### 本体(tdiary-core)の変更点
* Herokuボタンが動作していなかったのを修正

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
* とくになし

### contrib (tdiary-contrib)の変更点
* openidプラグインにLaunchpadを追加
* tatzu-zineプラグインが動作していなかったのを修正

