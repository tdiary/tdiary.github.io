---
leyout: post
title:  tDiaryの脆弱性に関する報告(2005-07-20)
date: 2008-10-25 21:08:08 +0900
categories:
  - security
---
Web日記支援システムtDiaryにおいて、クロスサイト・リクエスト・フォージェリ(CSRF)の問題が発見されました。

### 対象
この問題が存在するtDiaryは以下のバージョンです。

* tDiary 2.0.1およびそれ以前
* tDiary 2.1.1

### 想定される影響
悪意ある第三者が特殊なURLや外部ウェブページを生成することで、日記の改竄や削除、設定の変更などの操作を、ログイン中のユーザに不正に行わせることができる可能性があります。さらに、tDiaryが動作するWebサーバ上で任意のスクリプトやコマンドがtDiaryの実行権限にて実行される可能性があります。

### 対策
tDiary開発プロジェクトでは、対策を実施した以下のバージョンを公開しています。

* tDiary 2.0.2 (安定版)
* tDiary 2.1.2 (開発版)

対策は以下の通り、日記の更新および設定の変更時に新たにいくつかのガードを設けました。

* HTTPのPOSTメソッドが使われていることをチェック
* Refererが正当なURLであることをチェック
* フォームに埋め込まれた(攻撃者が知りえない)CSRF防止キーをチェック

### 謝辞
本脆弱性情報は、情報セキュリティ早期警戒パートナーシップに基づき下記の方がIPAに報告し、JPCERT/CCがベンダとの調整を行いました。

 産業技術総合研究所 情報セキュリティ研究センター
 大岩 寛氏, 高木 浩光氏
