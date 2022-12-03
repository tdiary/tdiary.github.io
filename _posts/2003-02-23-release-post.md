---
leyout: post
title:  tDiary 1.5.3リリース
categories:
  - release
---
tDiary 1.5.3をリリースしました。

カテゴリ機能やスタイル機能など、いくつか大きな機能追加が行なわれています。新しいプラグインやテーマもたくさん追加されました。

### 注意
1.5.3にアップデートしたら、まずキャッシュを削除してください。
キャッシュは@data_pathの下のcacheというディレクトリにあります。
削除する必要があるのは''yyyymm''.parser、''yyyymm''.rb、latest.rbです
(''yyyymm''には数字が入ります)。

### 本体
本体に追加されたのは以下の機能です。

*カテゴリ機能
**サブタイトルの最初にに「[foo]」のようなカテゴリを表す文字列を挿入しておくと、同じカテゴリをまとめて一覧することができます
**プラグイン集にあるcategory.rbをインストールすることで有効になります
*スタイル機能
**日記を記述する文法を選べるようになりました。現在含まれているスタイルは、tDiary(標準)、Wiki、RD、etDiary、emptDiaryの5種類です
*HTMLヘッダにlink属性をいくつか追加
*いくつかのバグの修正

### プラグイン
以下の新しいプラグインが追加されました。

* category.rb
* kw.rb        
* output_rdf.rb
* windex.rb
* todo

### テーマ
以下のテーマが追加されました。

* 3minutes
* 3pink
* cross       
* darkness-pop
* dog   
* futaba
* gear        
* gingham-blue
* gingham-gray
* gingham-green
* gingham-purple
* gingham-yellow
* gray
* nenga
* pain
* purple_sun
* sagegreen
* savanna
* silver2
* white 
* winter

### BlogKit
BlogKitの新しい機能は以下のとおりです。

*スタイル機能をサポート
**従来のBlogIOを使わず、Blogスタイル、BlogWikiスタイルを使うようにしました。
*いくつかのバグを修正

