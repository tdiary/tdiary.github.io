---
layout: page
title: ダウンロード
permalink: /download/
---
### tDiary本体、プラグイン、テーマ
#### パッケージ版(5.3.0)

3ヶ月ごと定期的にリリースされるシリーズです。動作実績を重要視するならこちら。基本セットはtDiary本体のみが含まれています。付属のテーマはデフォルトのものだけです。フルセットには別配布になっているテーマ集がすべて入っています。

* tDiary 5.3.0 (基本セット): [tdiary-v5.3.0.tar.gz](https://github.com/tdiary/tdiary-core/releases/download/v5.3.0/tdiary-v5.3.0.tar.gz) (約3MB)
* tDiary 5.3.0 (フルセット): [tdiary-full-v5.3.0.tar.gz](https://github.com/tdiary/tdiary-core/releases/download/v5.3.0/tdiary-full-v5.3.0.tar.gz) (約7MB)
* テーマ集 5.3.0: [tdiary-theme-v5.3.0.tar.gz](https://github.com/tdiary/tdiary-core/releases/download/v5.3.0/tdiary-theme-v5.3.0.tar.gz) (約4MB)

#### GitHubによる最新版の取得

<https://github.com/tdiary>にて、開発リポジトリを公開しています。anonymousで取得できるので、最新版を追いかける人はこちらを使うと楽でしょう。ただし、各開発リポジトリのmasterブランチはまれに不安定なことがあります。十分に注意して扱いましょう。

開発リポジトリは、以下のような構造になっています:

* [tdiary-core](https://github.com/tdiary/tdiary-core): tDiary本体/プラグイン
* [tdiary-theme](https://github.com/tdiary/tdiary-theme): テーマ集
* [tdiary-theme-nonfree](https://github.com/tdiary/tdiary-theme-nonfree): テーマ集(フリーでないもの)

その他IOやスタイルなどのうち、分離可能なものも独立したリポジトリになっています。また、バージョンごとにタグ(vX.Y.Z)が振ってあるので、必要なバージョンのソースコードを入手することもできます。

なお、開発リポジトリ版でトラブルに遭った場合は、それぞれのリポジトリ上のissueやpull requestにて報告をお願いします。

### BlogKit

tDiary 2.0系以降に追加するパッケージとして、BlogKitを提供しています。このキットは、記事を日付単位で管理する日記ツールとしてではなく、Blogツールのようにトピック単位で管理するものに、tDiaryを変更します。また、数々のプラグインにより、いっそうBlogらしさを演出する作りになっています。基本的に、同じバージョンのtDiary本体とともに使うようになっています。異なるバージョンでは動かないものもあります。

*BlogKit(5.3.0): [tdiary-blogkit-v5.3.0.tar.gz](https://github.com/tdiary/tdiary-core/releases/download/v5.3.0/tdiary-blogkit-v5.3.0.tar.gz) (37KB)
*BlogKitリポジトリ: https://github.com/tdiary/tdiary-blogkit

### contrib

contribパッケージには、本体(core)やプラグイン(plugin)パッケージには含まれないが、有用なものが含まれています。contribパッケージに含まれるのは以下のような基準に沿ったものです。

* バージョンに依存しないツール(tdiary-mode、posttdiary...)
* 国際化対応していない、しても意味がないプラグイン、スタイル
* 本体のバージョンに追従できないツールやプラグイン

最新のcontribパッケージは常に以下から入手できます。

* contrib(5.3.0): [tdiary-contrib-v5.3.0.tar.gz](https://github.com/tdiary/tdiary-core/releases/download/v5.3.0/tdiary-contrib-v5.3.0.tar.gz) (394KB)
* contribリポジトリ: https://github.com/tdiary/tdiary-contrib

またcontribは、希望者ならどなたでもcommitできるリポジトリとして運用しています。有用なプラグインやツールを作ったら、遠慮なく追加してください。このリポジトリへ参加するには、まず最初だけGitHub上の自分のリポジトリからpull requestを送ってください。それをもって参加の意思確認とし、teamへ追加します。それ以降は直接公式リポジトリへcommitしてかまいません。

