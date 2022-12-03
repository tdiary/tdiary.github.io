---
leyout: post
title: tDiary-5.1.4 リリース
categories:
  - release
  - 5.1
---
tDiary 5.1.4 をリリースします。本体の変更・修正はありませんが、関連するライブラリのセキュリティ修正に対応しているので、Rack環境やDocker環境で動かしている方はアップデートを推奨します。おまけでtdiary-io-mongodbのリリースについて触れておきます。

### 本体(tdiary-core)の変更点
* とくになし

### theme (tdiary-theme)の変更点
* とくになし

### blogkit (tdiary-blogkit)の変更点
* とくになし

### contrib (tdiary-contrib)の変更点
* とくになし

### MongoDB IO (tdiary-io-mongodb)
(通常のリリースではioやstyleのリリースはアナウンスしませんが、影響が大きいので補足します)

Heroku上でmLab add-onを使ってtDiaryを運用している方は、mLabのサービス停止にともない、MongoDB Atlasへ移行していると思います。ただ、mLabに比べてAtlasはリソースの制約が大きく、従来のtdiary-io-mongodbの実装ではtimeoutになる等の影響がありました。

tdiary-io-mongodbの本リリース(5.1.0)では、クエリの最適化によってこのあたりの制約を緩和しました。使い方に非互換はありません。

