---
leyout: post
title:  output_rdf、tb-sendプラグイン使用時の脆弱性
categories:
  - security
  - plugin
---
tDiary 1.5.6向けプラグイン「output_rdf.rb」と「tb-send.rb」の利用時において、特定条件時における脆弱性が発見されました。以下の条件に当てはまる場合は、至急対策をしてください。

* tDiary 1.5.6で「output_rdf.rb」もしくは「tb-send.rb」を使っており、かつ
* セキュアモード(@secure = true)で運用している

例えば、第三者に日記をレンタルしているサイトで「output_rdf.rb」や「tb-send.rb」を使っている場合はこれに該当することがほとんどです。攻撃の意図がある日記利用者によって、Webサーバの権限下でサーバの資源へのアクセスができてしまいます。

対策は以下のいずれかになります。

* 「output_rdf.rb」と「tb-send.rb」の使用を止める、もしくは
* tDiary本体をアップデートする。昨晩更新された1.5.6.20031118がそれです。対象になるファイルはtdiary.rbだけです

※この脆弱性は、output_rdf.rbやtb-send.rb自身の脆弱性ではなく、これらのプラグインの特殊な使われ方にによって発覚したtDiary本体の脆弱性です。

