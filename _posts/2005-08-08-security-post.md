---
leyout: post
title:  最近多発しているツッコミspamへの対策
date: 2011-11-03 17:45:14 +0900
categories:
  - security
  - filter
---
2005年の夏ごろから、tDiaryのツッコミを狙ったと思われるspamが多発しています。ひどいときは単一の日記に連続して数十のツッコミをしていくため、迷惑している方が多いと思われます。

とりあえずの対策として、tDiary 2.0から利用できるようになったフィルタ機能を使って、spamをはじく方法を記載します。少なくともこれで、spamが記録されることはなくなりますので、ご利用ください。

以下のコードを、tDiaryインストールディレクトリにあるtdiary/filterディレクトリに「antispam.rb」という名前で作成します。ファイル名を変えると動作しないので気をつけてください。

 module TDiary
    module Filter
       class AntispamFilter < Filter
          def comment_filter( diary, comment )
             mailregexp = r = /^[0-9a-zA-Z_.-]+@[\(\)%!0-9a-zA-Z_$.&+-,'"*-]+(\.[\(\)%!0-9a-zA-Z_$.&+-,'"*-]+)*\.[a-zA-Z]{2,6}$/
 
             if /@(yahoo|hotmail|gmail|aol|leroy|ablare|gmx)\.com$/ =~ comment.mail
                false
             elsif comment.mail.length > 0 and mailregexp !~ comment.mail
                false
             elsif comment.body =~ /href=/
                false
             elsif comment.body.scan( %r|https?://| ).size > 2
                false
             else
                true
             end
          end
       end
    end
 end

このフィルタの動作は、以下のとおりです:

* メールアドレスに、@yahoo.com、@hotmail.com、@gmail.com、@aol.com、@leroy.com、@ablare.com、@gmx.comを含むツッコミを記録しない
* メールアドレスが正しい形式になっていないツッコミを記録しない
* 本文に「href=」を含むツッコミを記録しない(aタグが使われていると判断)
* 本文にURLを3つ以上含むツッコミを記録しない

偶然これらにマッチするspamでないツッコミもはじいてしまうことになりますが、滅多にないはずなので、現状では許容せざるを得ません。

!!追記
* 2006-05-17: 「href=」を含むツッコミを排除
* 2005-09-12: URLが3つ含まれるspamが増大したため、URLの閾値を3に変更。さらにメールアドレスに「@gmx.com」を追加
* 2005-08-12: メールアドレス形式のチェックを追加

