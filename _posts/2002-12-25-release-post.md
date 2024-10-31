---
leyout: post
title:  1.5.2リリース
categories:
  - release
---
tDiary 1.5.2をリリースしました。今回リリースされたのは以下のファイルです。

 * tdiary-1.5.2.tar.gz (基本セット)
 * tdiary-full-1.5.2.tar.gz (フルセット)
 * tdiary-blogkit-1.5.2.tar.gz (Blogkit)

[ダウンロード](/download/)のページからどうぞ。

主な変更点は以下のとおりです。

 * 「長年日記」機能を追加。異なる年の同じ日の日記を同一ページで読むことができます。去年の今ごろ何していたかが一目瞭然です
 * ruby 1.6.8をサポート。1.5.1ではうまく動作しなかった点をあらためました。また、昨日リリースされた1.8.0 preview1での動作も確認しています
 * いくつかの新しいテーマを追加
 * whatsnewプラグインを追加
 * plugin: Pluginクラスにapply_pluginメソッドを追加
 * plugin: add_footer_procを追加。日記の最後で呼び出されるコールバックです
