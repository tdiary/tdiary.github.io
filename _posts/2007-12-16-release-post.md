---
leyout: post
title:  tDiary 2.2.0リリース
date: 2007-12-27 18:14:19 +0900
categories:
  - release
---
tDiary 2.2.0(安定版)をリリースしました。

このリリースは約3年半ぶりの新しい安定版系列のリリースになります。これまで、2.1系列として開発を続けて来たものの、正式リリースです。いくつもの新しい機能が含まれています。お楽しみください。

また、旧バージョン(2.0系・2.1系とも)には、新しい脆弱性が発見されています。脆弱性の内容については[脆弱性に関する報告(2007-12-16)](20071215.html)をご覧下さい。速やかに2.2.0へのアップデートをしてください。

→[ダウンロード](http://www.tdiary.org/20021112.html)

2.0から2.2への更新方法と、主な変更内容は以下の通りです。

### 2.0から2.2への更新方法
本体のパッケージにはdoc/UPGRADEというファイルが含まれています。これを参照してください。いくつかのプラグインファイルの名称変更に伴う非互換に、あらかじめ対応しておく必要があります。

その他は、基本的に上書きするだけで動作するように作成してありますが、必ずしもすべての環境でスムーズにアップデートできる保障はありません。トラブルに遭った方は、[tDiary-users掲示板](http://tdiary-users.sourceforge.jp/cgi-bin/wforum/wforum.cgi)やメーリングリストなどで報告していただけると助かります。

### tDiary本体(core)の変更点
#### 機能追加
* 標準的なspamフィルタを追加
* Akismet.comを利用するspamフィルタ追加
* spamlinkcheckフィルタ追加(TrackBack spam対策)
* Mobile Link Discovery対応
* PluginクラスにUTF-8変換のための標準メソッドto_utf8追加
* XML-RPCサポート
* misc/libをRubyのライブラリ検索パスに追加
* 「n日前」「n日後」の日記へのジャンプ機能追加
* サイト情報にバナー(@conf.icon)と説明(@conf.description)を指定可能に
* ビギナー向けオススメtdiary.confを追加(tdiary.conf.beginner)
* プラグインにsection_enterおよびsection_leaveコールバックを追加
* プラグインにtitle_procおよびsubtitle_procコールバックを追加
* プラグイン利用時のHTTP proxy設定を共通化(@options['proxy']
* 設定ページにヘルプボタンを設置

#### 機能変更
* 【非互換】plugin/01sp.rbを50sp.rbに変更(各言語リソースも同様)
* Ruby 1.6サポート取りやめ
* TrackBackを仕様1.2に準拠
* Wikiスタイルでヒアドキュメントを利用可能に
* Wikiスタイルで複数行プラグイン表記を可能に
* WikiスタイルのパーサをHikiDocベースに変更
* Wikiスタイルをファイルコピーなしで(@styleのみで)利用可能に
* cache-controlの代わりにETagとIf-None-Matchを利用
* update_procコールバックをツッコミ表示状態変更時にも呼び出し
* ツッコミフォームの生成をプラグインで行うように変更
* ツッコミメールにツッコミ元IPアドレスと(フィルタによる)表示状態を付加
* ツッコミ件数の制限を撤廃
* テーマ選択ページにサムネイルを表示
* プラグイン出力におけるHTMLタグエスケープを全面的に見直し
* モバイルモードでもカテゴリ機能を利用可能に
* モバイルモードのdayモードにおける「追記」を「編集」に変更
* モバイル対象端末に「Vodafone」「MOT-」「WILLCOM」「SoftBank」を追加
* 設定ページのデザイン変更、テーマによらず統一
* 編集ページのナビゲーションに「前の日記」「次の日記」を追加
* 本日のリンク元ファイル管理を日単位にし、過去の日記へのリンク元表示を揮発性に
* 本日のリンク元表示に「rel="nofollow"」を付与。spam対策として
* スパムフィルタの存在を知らせるメッセージを編集可能に
* モバイルモードのショートカットキーを変更
* 設定画面のOKボタンをページ上部にも設置
* WikiスタイルをHikiDocベースに変更し、インストール不要で使えるように

#### セキュリティ対応
*  設定ページにてbase_urlを指定可能に

### プラグイン集(plugin)の変更点
#### 追加されたプラグイン
* akismet.rb: Akismet spamフィルタサービスを使うためのプラグイン
* daily_theme.rb: 日替わりでテーマを変えるプラグイン
* edit_today.rb: その日の日記の編集ページへのリンクを表示する
* hide-mail-field.rb: spam対策としてツッコミフォームからメールフィールドを消す
* my-sequel.rb: 過去の関連する日記に自動的にリンクを生成する
* recent_rss.rb: 指定した任意のフィードの内容を表示するプラグイン
* xmlrpc.rb: tDiaryにXMLRPCインタフェースを付加する

#### 機能変更のあったプラグイン
* a.rb: 設定ページサポート、国際化
* amazon.rb: エラー発生時にはプレビューでメッセージを表示
* amazon.rb: 書影が存在しない場合の画像をtDiary.orgから取得するように変更。カスタマイズ可能
* amazon.rb: 商品の詳細説明を表示するisbn_detailプラグインを追加
* amazon.rb: 13桁のISBNに対応
* 【非互換】amazon.rb: proxyの設定を@options['proxy']を使うように変更。
* calendar2.rb: image.rbと連携してその日の画像を埋め込めるようになった
* category.rb: モバイルモードでの表示をサポート
* counter.rb: 設定ページサポート。速度と安定性を向上
* disp_referrer.rb: いくつかの検索エンジンのサポートを追加
* footnote.rb: セクションごとに脚注がつくようになった。feedにも適切に埋め込まれる。BlogKitでの動作にも対応。アンカーに非互換あり
* highlight.rb: <title>タグに選択中のセクションのサブタイトルを設定
* jdate.rb: contribパッケージに移動
* kw.rb: UTF-8をサポート
* 【非互換】makerss.rb: ツッコミ抜きのフィードも同時に生成可能になった。makerss.hidecommentオプションは撤廃
* makerss.rb: フィードの本文中に「ツッコミを入れる」リンクを付加
* makerss.rb: 日記更新時にフィードも更新するかどうか選択可能になった
* makerss.rb: Mobile Link Discoveryをサポート
* 【非互換】recent_comment.rb, recent_comment3.rb: 順序なしリストを使うようにHTMLを変更
* 【非互換】recent_comment.rb, recent_comment3.rb: 設定ページを設け、オプションを全廃
* recent_trackback3.rb, recent_comment3.rb: ツリービューをサポート
* 【非互換】recent_trackback3.rb: 順序なしリストを使うようにHTMLを変更し、recent_trackback3.seオプションを撤廃
* search_control.rb: カテゴリーページは検索エンジンに登録しないように強制
* search_form.rb: 検索キーワードを展開するextract_search_keywordプラグインを追加
* tb-send.rb: TrackBack仕様1.2に準拠
* 【非互換】title_list.rb, recent_list.rb: 順序なしリストを使うようにHTMLを変更
* windex.rb: contribパッケージに移動
* XSS対策のため出力時エスケープ処理を徹底
* 国際化を徹底
* feedやTrackBackを出力する場合の文字コードをUTF-8に統一
* 更新および設定ページ内のラジオボタン/チェックボックスでラベルのクリックでも動作するように
* セキュアモードでは動作しないプラグインをセキュアモードから使った場合にメッセージを表示

### テーマ集(theme)に追加された新しいテーマ
* 90
* te
* vi
* lcd
* yae
* zef
* query111or
* aqua
* city
* memo
* mixi
* navy
* noto
* pict
* soda
* town
* ymck
* manuscript-brown
* manuscript-green
* green-tea
* wall5_tatami
* dot-lime
* dot-pink
* artnouveau-green
* delta
* tour-de-hokkaido
* dot-orange
* hatena_cinnamon
* jungler
* monochrome
* lcars
* utsusemi
* memo2
* memo3
* pearl
* orkut
* wall1
* wall2
* wall3
* wall4
* web20
* quirky2
* chiffon_pink
* chiffon_skyblue
* 3minutes
* hatena_japanese
* hatena_savanna-red
* dot-sky
* mixi-green
* bistro_menu
* black-blue
* nut-brown
* kurenai
* blackboard
* hatena-red
* hatena-lime
* hatena-pink
* glass_emerald
* soft-gold
* hatena_water
* dotted_line-green
* hatena_leaf
* hatena_rainyseason
* pokke-orange
* glass_light_blue
* kitchen-natural
* hatena_savanna-green
* leafgreen
* choochoo
* dotted_line-blue
* halloween
* dotted_line-red
* ginkgo
* artnouveau-red
* black-green
* asterisk-maroon
* widthfix
* mt_fuji
* pokke-blue
* kasumi
* artnouveau-blue
* asterisk-orange
* hazakura
* mini-g
* mini-p
* mirage
* momiji
* glass_orange
* glass_purple
* quirky
* shirakaba
* colorlabel
* glass_green
* hatena-black
* hatena-brown
* asterisk-lightgray
* rim-mizuiro
* hatena-green
* chiffon_leafgreen
* query000
* query011
* query101
* query110
* hatena-sepia
* hatena-white
* glass_yellow
* mixi-blue
* mixi-pink
* kitchen-french
* blue-dash
* rim-daidaiiro
* rim-fujiiro
* asterisk-blue
* asterisk-pink
* pastelpink
* hatena-lightblue
* hatena-lightgray
* hatena-orange
* hatena-purple
* hatena-darkgray
* black-red
* britannian
* rim-tanpopoiro
* hatena_savanna-blue
* rim-wakabairo
* kitchen-classic
* rim-sakurairo
* glass_blue
* glass_pink
* cherry_blossom_r
* glass_red
* smoking_gray

### BlogKitの変更点
#### 機能追加
* blog-style.rb: BlogKit独自のスタイルを設定するプラグイン。BlogKit運用時に有効化(ほぼ)必須。archive.rbから独立
* title-link.rb: 記事のタイトルをPermalinkへのリンクにするプラグイン

#### 機能変更
* 【非互換】recent-entry.rb: recent-entry2.rbとマージ。recent-entry2.rbは廃止
* title-navi.rb: 編集時に前後の記事に移動するリンクを表示
* whatsnew-list.rb: フィードの文字コードをUTF-8に固定
* whatsnew-list.rb: 記事更新時にフィードも更新するかどうか選択可能に
* whatsnew-list.rb: Mobile Link Discoveryをサポート
* whatsnew-list.rb: feed本文中にコメントとTrackBackの数を含めた
* セキュアモードでは動作しないプラグインをセキュアモードから使った場合にメッセージを表示

