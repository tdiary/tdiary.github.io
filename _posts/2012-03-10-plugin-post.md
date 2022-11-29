---
leyout: post
title:  socialbuttonプラグインにおけるはてなブックマークボタンのトラッキング拒否について
date: 2012-03-10 21:35:02 +0900
categories:
  - plugin
---
現在tDiaryのcontribパッケージでは、各種ソーシャルボタンを日記に埋め込むsocialbuttonプラグインを提供しています:

* [socialbuttonプラグイン](https://github.com/tdiary/tdiary-contrib/blob/master/plugin/socialbutton.rb)

この中で利用可能になっている「はてなブックマークボタン」において、日記読者に対するプライバシー侵害が引き起こされる問題が指摘されています。詳しくは下記の参考リンクをお読みください:

* [はてなブックマークボタンは2011年9月1日より行動情報の取得をしている - ARTIFACT@ハテナ系](http://d.hatena.ne.jp/kanose/20120306/hbmbutton)
* [ブログパーツやソーシャルボタンの類でアクセスログが残るのは当然だけどトラッキングされるのは当たり前にはなっていない - 最速転職研究会](http://d.hatena.ne.jp/mala/20120308/1331193381)

tDiary開発チームではこの問題に対し、プラグイン内部で使用しているjQueryプラグインへのパッチという形で対処いたしました。現在リポジトリに公開中のバージョンでは、プライバシー侵害を引き起こすトラッキングがされないスクリプトを使うようになっています。socialbuttonプラグインを利用している方は、最新版にアップデートするか、下記のパッチを適用することを推奨します:

* [jquery.socialbutton.jsに対するパッチ](https://github.com/tdiary/tdiary-contrib/commit/fc73fd5fb783dc250b1689aba36e19721cd745c7)

### 追記
section_footer2プラグインにも同様の問題があることがわかったため、修正をしてあります:

* [section_footer2.rb](https://github.com/tdiary/tdiary-contrib/blob/master/plugin/section_footer2.rb)
* [差分](https://github.com/tdiary/tdiary-contrib/commit/a927d49cf7dbb6fe1fc776f907ede5ffbffe9cfc)

