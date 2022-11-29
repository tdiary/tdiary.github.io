---
leyout: post
title:  tDiary 2.1.1(開発版)リリース
date: 2005-06-09 15:57:53 +0900
categories:
  - release
---
2.1(開発版)の最初のリリースである、2.1.1を公開します。

開発版とは、次の安定版のリリースに向けて、開発者が新しい機能を試したり、仕様変更を行ったりするために使うリリースです。基本的に(開発者は)安定して使えるレベルのつもりで公開していますが、仕様が不安定だったり、テストが不十分である可能性があります。また、バージョン間での非互換も大きくなる傾向があるため、**使用に際しては十分に注意が必要**です。

→[ダウンロード](20021112)

以下、2.0.0以降2.1.1リリースまでの主な変更点です:

### 本体
* ruby 1.8.2以降のみをサポートするようになった
* 「前n日分」「次n日分」機能
* モバイルモード端末に'Vodafone'と'MOT-'(Vodafone 3G端末)を追加
* tdiary.confの設定項目に@conf.iconと@conf.description追加
* XML-RPCサポート
* showcommentモードでupdate_procの呼び出しをするようになった(plugin開発者向け)
* その他のバグ修正

### プラグイン
!!追加になったプラグイン
* xmlrpc.rb
* rast-register.rb 

!!修正されたプラグイン
* append-css.rb
* makerss.rb  
* category.rb 
* referer_scheme.rb
* image.rb
* tb-show.rb
* tb-send.rb
* trackback/tb.rb  
* tlink.rb
* weather.rb
* disp_referrer.rb
* a.rb
* counter.rb
* amazon,rb
* search_control.rb                                                 
* calendar2.rb                                                      
* calendar3.rb
* squeeze.rb
* recent_comment3.rb
* recent_trckback3.rb
* highlight.rb
* html_anchor.rb
* navi_user.rb

### テーマ
!!追加になったテーマ
* be_r5
* natrium
* cherry_brossom
* sleepy_kitten
* orange_flower
* curtain
* white_flower
* digital_gadgets
* treetop
* tdiarynet
* necktie
* at
* green_leaves

### BlogKit
* 「前n日分」「次n日分」機能追従
* その他のバグ修正

