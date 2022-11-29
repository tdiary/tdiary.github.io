---
leyout: post
title: tDiary-5.1.5 リリース
date: 2021-02-28 23:34:40 +0900
categories:
  - release
  - 5.1
---
tDiary 5.1.5 をリリースします。本体に大きな変更・修正はありませんが、関連するライブラリのセキュリティ修正に対応しているので、Rack環境やDocker環境で動かしている方はアップデートを推奨します。

なお、当初の予定ではこのバージョンからRuby 3.0を正式サポートする予定でしたが、関連パッケージや依存ライブラリの十分なテストができておらず、今回は見送ります。ただし、テストは一応通っており、動作実績もあるので、Ruby 3.0での運用を強く止めるものではありません。

### 本体(tdiary-core)の変更点
* フッターにRubyのJIT機能が有効な場合の表記を追加
* (開発者向け) devcontainerアップデート
* (開発者向け) CIをGitHub Actionsへ移行

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
* とくになし

### contrib (tdiary-contrib)の変更点
* ogpプラグイン: imageプラグインとの協調動作がおかしかったのを修正
* jholidayプラグイン: 【非互換】サポートの切れた依存ライブラリを差し替え
** holiday_japan gemが必須になりました。Rack環境ではbundle updateで入ります
* (開発者向け) devcontainerアップデート
* (開発者向け) CIをGitHub Actionsへ移行

