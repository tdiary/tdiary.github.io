---
leyout: post
title:  tDiary-5.2.0 リリース
categories:
  - release
  - 5.2
---
tDiary 5.2.0 をリリースします。本体に大きな変更・修正はありませんが、プラグインにいくつか動作に影響のない非互換があります。

### 本体(tdiary-core)の変更点
* comment_mail-smtpプラグイン: メールのエンコーディングをISO-2022-JPからUTF-8に変更
* comment_mail-* プラグイン: ruby 3.0で動くように修正
* Dockerイメージをruby 3.0をベースに変更
* vscodeでデバッガが使えるように修正

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
* とくになし

### contrib (tdiary-contrib)の変更点
* google_analyticsプラグイン: analytics.jsをgtags.jsへ変更
* profileプラグイン: ruby 3.0で動くように修正

