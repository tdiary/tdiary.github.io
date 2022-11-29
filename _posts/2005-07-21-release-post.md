---
leyout: post
title:  tDiary 2.0.2、2.1.2リリース
date: 2005-08-10 12:00:59 +0900
categories:
  - release
---
tDiary 2.0.2(安定版)、2.1.2(開発版)をリリースしました。

このリリースの目的は、主に脆弱性対策です。脆弱性の内容については[脆弱性に関する報告(2005-07-20)](20050720.html)をご覧下さい。対象となるバージョンをお使いの方は、**最新版へのバージョンアップを強く推奨**します。

→[ダウンロード](20021112.html)

### CSRF攻撃対策に伴なって必要な利用者の対応
(以下の解説は、今回の脆弱性の報告者である産業技術総合研究所 情報セキュリティ研究センターの大岩寛氏によるドキュメントをベースにしています)

tDiary 2.0.2、tDiary 2.1.2以降では、クロスサイト・リクエスト・フォージェリ(CSRF)攻撃に対する対策が導入されています。対策内容は以下の3点です:

* 日記の更新・設定の変更がPOSTメソッドで行われていること
* Refererの値が正当なものであること
* フォームに埋め込まれた(攻撃者が知りえない)CSRF防止キーが正しいこと

利用者の対応が必要になる可能性があるのは、後の2点に関してです。通常の利用では標準的な設定のままでもユーザが特に意識する必要はないように設計されていますが、ユーザ側・Webサーバ側で特殊な設定をしている場合、日記の更新、設定の変更などができなくなる場合があります。

具体的には、以下の場合に問題が生じます。

# ブラウザからRefererを送出しない設定を行っている場合
# Webサーバにreverse proxyなどが導入された結果、ユーザに見えるupdate.rbのURLと、サーバの認識するURLが一致しない場合
# 今回の対策に対応しない、ブラウザ以外のクライアントを使っている場合

まずは一回、いつもの環境で日記を書いてみてください。問題なく更新できれば、以下を読む必要はありません。もし更新に不具合があり、上記の場合に当てはまるときには、以下にそれぞれの場合の対策を説明しますので、対応してください。なお、対策の実施にあたっては、設定画面に新たに加わった「CSRF(乗っ取り)対策」ページを使います。

#### ブラウザからRefererを送出しない設定を行っている場合
ブラウザの設定を変更してRefererヘッダを送出しないようにしている場合、あるいは一部のパーソナル・ファイヤウォールソフトが「プライバシー対策」と称してRefererヘッダを削除している場合、CSRF対策の設定変更を含む、全設定の変更・日記の更新ができなくなります。

この場合、設定変更をしようとすると、以下のようなエラーが出ます。

 Security Error: Possible Cross-site Request Forgery (CSRF)
 
    Diagnostics:
       - Protection Method is 1
       - Mode is saveconf
            - GET is not allowed
       - Request Method is POST
       - Referer is empty     ←←←←←[ここ注目]
            - Given referer:       
            - Expected base URI:   http://www.example.jp/~user/tdiary/
            - Expected update URI: http://www.example.jp/~user/tdiary/update.rb
       - CSRF key is nothing

この場合は、次の''いずれか''の対策を取ってください。

# 一時的にRefererを送出する設定にした上で、"CSRF(乗っ取り)対策" 設定項目で以下に設定を変更する。
** Refererを送らないブラウザを拒否「しない」
** CSRF防止キーの検査「する」
** CSRF防止キーは、他人の知らない適当な文字列
# tdiary.conf.sampleを参考にして、tdiary.confで以下の設定をする。
** @options['csrf_protection_method'] を 2 に、
** @options['csrf_protection_key'] は 他人の知らない適当な文字列

いずれの場合も、「他人の知らない適当な文字列」を何らかの方法で推測・入手されると、CSRF攻撃対策がすべて無意味になってしまいますので、十分気をつけて管理してください。パスワードではないので、覚えられる文字列にしておく必要はありません。

#### Reverse Proxy、URL Rewritingの問題
プロバイダによっては、Reverse Proxyといって、実際のWebサーバとインターネットの間にキャッシュサーバを導入している場合があります。この場合、実際のWebサーバが認識する「日記のURL」と、ユーザに提示される「日記のURL」が一致しません。また、自分でmod_rewrite等を導入して、URLを書き換えている場合も同様な状態になります。

このような設定になっている場合に、日記の更新や設定の変更をしようとすると、以下のようなメッセージが出ます。

 Security Error: Possible Cross-site Request Forgery (CSRF)
 
    Diagnostics:
        - Protection Method is 1
        - Mode is saveconf
            - GET is not allowed
        - Request Method is POST
        - Referer is another page ←←←←←[ここ注目]
            - Given referer:       http://www.example.jp/~user/tdiary/update.rb
            - Expected base URI:   http://www01.example.jp/~user/tdiary/
            - Expected update URI: http://www01.example.jp/~user/tdiary/update.rb
        - CSRF key is nothing

このようなメッセージが出た場合、Given refererに表示されたURLをまずチェックしてださい。**このURLが本当に自分の日記のURLだった場合に限り**、次のような設定をtdiary.confに書き加えてください。

 def base_url 
    'http://www.example.jp/~user/tdiary/'
 end

この値には、tDiaryの設置されたディレクトリまでのURLを(最後の / 付きで)指定します。update.rbのURLをtdiary.conf中で絶対URLで指定している場合は、特にこの変更は必要ありません。

#### 今回の対策に対応しない、ブラウザ以外のクライアントを使っている場合
今回の対策で、tdiary-mode、posttdiary.rbなど、周辺ツールも更新されています。これらのツールを使っている場合は、今回の対策に対応したバージョンに更新が必要です。

### CSRF攻撃対策に伴なって必要な開発者の対応
プラグインの開発において、いくつかの留意点が増えています。パッケージに付属の、doc/HOWTO-make-plugin.htmlを参照してください。

