---
leyout: post
title:  tDiary 3.0.0リリース
date: 2010-12-23 12:27:30 +0900
categories:
  - release
  - 3.0
---
tDiary 3.0.0をリリースしました。

このリリースは新しい安定版シリーズである3.0系列の最初のリリースになります。2.2系から3.0への最大の変更点は、「UTF-8化」と「ruby 1.9対応」です。いずれも大きな変更になりますので、以下の注意をよく読んでからアップデートを行って下さい。すでに2.3系で運用している場合は特に大きな問題はでないでしょう。

### アップデートに関する注意点
#### 文字コードのUTF-8化
tDiary 3.0では日記データのファイルのエンコードをEUC-JPからUTF-8へと変更しています。この変更により複数の言語で日記を書けるようになりました。

tDiary 3.0にバージョンアップすることで、自動的に新しく書いた日記はエンコーディングがUTF-8で作成され、過去の日記データも表示する際にEUC-JPからUTF-8に自動的に変換されます。

いちどUTF-8に変換された日記データは、基本的にはEUC-JPへは戻せません。かならずバックアップをとってからアップデート作業をしてください。

#### ruby 1.9.2 への対応
tDiary 3.0ではrubyを1.9.2にバージョンアップするだけで移行できるようになっていますが、 tDiaryが生成するキャッシュファイルは互換性の問題でまれにエラーになることがあります。

エラーになった場合のもっとも簡単な対処は、データディレクトリにあるcacheディレクトリを丸ごと削除する方法です。ただし、counter.rbの情報が消えるとカウンタが巻き戻ってしまうので、初期値を控えておくなどの対処が必要です。また makerss.rbやrecent_comment.rbが生成するキャッシュが消えるため、しばらくは寂しい状況になるかも知れませんが、これらは時間が解決してくれます:-) すべてのキャッシュを削除するのが困難な場合は、個別のファイルごとに対処してください。

また、カテゴリに関する情報も、同様な理由でエラーを起こすことがあります。この場合は、categoryプラグインの設定画面で「カテゴリインデックスの作成」を実行してください。

いちどruby 1.9.2上で動作させた日記データは、基本的には1.8へは戻せません。かならずバックアップをとってからアップデート作業をしてください。

#### tDiary 3.0とruby 1.9.2を同時にアップデートしない
ruby 1.8.* で動かしているtDiary 2.2系をtDiary 3.0とruby 1.9.2の環境へ同時にアップデートすることは避けるべきでしょう。日記データが壊れることはないはずですが、キャッシュデータが壊れてしまう可能性があります。

どうしてもtDiaryとrubyの両方をバージョンアップしたい場合は以下の手順でバージョンアップして下さい。

* tDiaryをまず3.0にバージョンアップし、ruby 1.8の状態でブラウザから日記を表示します。この際に日記データと利用しているプラグインのキャッシュデータがUTF-8へと変換されます。
* 利用しているプラグインの動作を全て確認後にruby 1.9.2へとアップデートします。

利用しているプラグインによっては、上記の手順で完全に変換が実行されない可能性もあります。不安な場合は<tdiary-devel@sourceforge.net>まで相談してください。

#### pluginパッケージの廃止
pluginパッケージはcoreに統合され、単体ではなくなりました。今後はcoreのmisc/plugin配下を見てください。環境によっては、tdiary.confの@options['sp.path']を書き換えないとプラグインが見えなくなる場合があります。アップデート後に確認して下さい。

#### ruby 1.8 系のバグの影響
ruby 1.8のいくつかのバージョンでは、プラグインの組み合わせによってrubyの処理系そのものが異常終了することがわかっています(参考: [チケット142](http://www.cozmixng.org/retro/projects/tdiary/tickets/142))。問題になる組み合わせのプラグインの利用を取りやめるか、rubyを1.9.2-p0または1.8.7-p249以上に上げることで回避できます。

### tDiary本体(core)の変更点
!!機能追加
* 標準の文字コードをEUC-JPからUTF-8に変更、3.0.0以前からのバージョンアップ時に過去のデータを自動的にUTF-8に変換する機能を追加
* ruby 1.9.2に対応
* iPhone/iPod touchを含むスマートフォン用の表示に対応
* AutoPagerizeに対応
* FastCGIに対応(index.fcgi)
* 検索API用を用意、専用のテンプレートを追加
* 存在しない日記に botがアクセスした場合に404エラーを返すようにした
* 編集画面に表示されるチェックボックスにラベル要素を追加
* 利用するspamフィルタを設定画面上から選択できるようにした
* おすすめフィルタ機能の追加
* IPベースのDNSBLフィルタ機能の追加
* フッタにRUBY_PATCHLEVELを表示するようにした
* logger対応、@logger.debug( log )とすることで日単位でローテートされたログを出力可能にした

!!機能変更
* Ruby 1.8以降では推奨されていない処理を修正
* Webサービスとして提供されているspam判定サービスを利用するakismetプラグインをcore本体の一部とした
* spam判定サービスとしてTypePad AntiSpamを追加
* 従来のnavi_user.rbプラグインを標準動作とした
* HikiDocのバージョンを 0.0.2 に差し替えた
* @accesskey_enabled = falseを設定することで編集画面でアクセスキーを無効にできるようにした
* dot.htaccessにapplication/xmlを追加 (一部のfeed reader対策)
* テンプレートとCSSを一部のプラグインにあわせて修正
* mixiのゲートウェイ、emobileと一部の携帯シミュレータを携帯端末として認識するようにした

!!バグ修正
* セキュアモードにてSecurityErrorが出る場合があったのを(一部)修正
* スタイルファイルが存在しない時にエラーを表示するようにした
* 存在しない日記を表示しようとするとエラーがでる場合があったのを修正
* サブタイトルのアンカータグにタイトル属性が追加されていないのを修正
* コメントフォームを非表示にする設定であってもコメントフォームが表示される場合があったのを修正
* 携帯からのアクセス時にrefererが存在するとエラーが出る場合があったのを修正
* tDiaryスタイル使用時にカテゴリが消滅してしまうことがあったのを修正
* 一部不正なHTMLの修正

### プラグイン集 (plugin) の変更点
以下は旧pluginパッケージに対する独立した変更点です。

!!機能追加
* 各種プラグインのUTF-8対応
* ruby 1.9.2 対応
* amazon.rb: ca(カナダ)対応
* amazon.rb: amazon.endpointsおよびamazon.default_countryオプションを追加
* amazon.rb: EANコードへの対応、HTMLの修正
* category.rb: カテゴリの表示順序をローマ字の大文字、小文字を区別しないようにした
* category.rb: 存在しない日記にbotがアクセスした場合に404エラーを返すようにした
* highlight.rb: XHTMLモードでも動くようにした
* recent_rss.rb: feedの変更日時を表示できるオプションの追加
* squeeze.rb: --overwriteオプションの追加
* pre_wrap.rb: 新規収録

!!機能変更
* 一部のプラグインでRuby 1.8以降では推奨されていない処理を修正
* cacheディレクトリにデータファイルを作成するいくつかのプラグインについて、ファイルの作成先を変更
* amazon.rb: AmazonのAPI認証に対応
* category.rb : 編集画面のカテゴリ文字列が挿入される位置をテキストの最後からカーソルが存在する位置に変更
* disp_referrer.rb: 新しい検索エンジンに対応
* squeeze.rb: user_naviプラグインをフッタエリアに挿入(検索エンジン対策)
* image.rb: イメージ表示処理の高速化

!!バグ修正
* amazon.rb : Amazon の商品ページにユーザー画像が存在する時に商品画像が取得できない問題を修正
* category.rb: 空白を含んだカテゴリの形式に非互換が発生していたのを修正
* category.rb: カテゴリプラグインの設定で「表示期間の初期状態」を四半期に再設定できないのを修正
* category.rb: HTML の修正
* counter.rb : 一部の設定が空の時に設定画面が表示できない問題を修正
* gradient.rb, gradation.rb: 区切り文字の修正
* highlight.rb: タイトルの形式を本体に合わせた
* image.rb: 改行コードを含む PNG ファイルが扱えないバグを修正
* makerss.rb: カテゴリ名を削りすぎないように修正
* makerss.rb: 文字の実体参照時に大文字と小文字が区別されていなかったので、区別されるように修正
* makerss.rb: サブタイトルが空である時にエラーとなっていたのを修正
* navi_user.rb: 一部のプラグインと同時に使用するとエラーとなっていたのを修正
* squeeze.rb: メモリリークの修正
* squeeze.rb: -p オプション使用時に不正な処理をしていまう場合があったのを修正
* title_tag.rb: サイト名称が空白である場合にエラーとなっていたのを修正
* title_tag.rb: タイトルの形式を本体に合わせた

### theme の変更点
#### 追加
* gustav
* hsbt

### BlogKit の変更点
!!機能追加
* Ruby 1.9.2 対応
* 各種プラグインの UTF-8 対応
* whatsnew-list.rb: whatsnew_list.url オプションの追加

!!機能変更
* blog-style.rb, title-navi.rb: 日付を非表示にするスタイルを title-navi.rb から blog-style.rb へ移動
