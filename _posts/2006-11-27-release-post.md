---
leyout: post
title:  tDiary 2.1系の脆弱性対応
date: 2007-06-04 01:48:20 +0900
categories:
  - release
  - security
---
2006年11月26日の[tDiaryのクロスサイト・スクリプティング(XSS)脆弱性](20061126.html)の公表を受け、2.1系開発版に対する対応状況を説明します。

### パッケージのリリースは行いません
現在の2.1系の開発状況を鑑みて、現在のスナップショットはパッケージ化するだけの品質にないと判断し、2.1.5のリリースは行いません。2.1系利用者は、最新スナップショットへバージョンアップするか、2.1.4に対するパッチを適用するかを選択していただくことになります。

#### (1) 最新スナップショットへのバージョンアップ
毎朝作成されている最新スナップショットに置き換えることで、脆弱性対策ができます。対策済みtDiaryのバージョンは2.1.4.20061126になります。ダウンロードは以下から可能です:

* [フルセット(tdiary-full.tar.gz)](http:/download/tdiary-full.tar.gz)
* [基本セット(tdiary.tar.gz)](http:/download/tdiary.tar.gz)

開発版では本体とプラグイン集が依存していることが多いため、基本セットを使う場合には一緒に[プラグイン集(tdiary-plugin.tar.gz)](http:/download/tdiary-plugin.tar.gz)も更新すべきでしょう。

#### (2) パッチの適用
スナップショットへの更新を行わない場合には、2.1.4に対する、脆弱性対応パッチを当ててください。以下で公開しています。

* [tdiary.20061126.patch](http:/download/tdiary.20061126.patch)

tDiaryのインストールディレクトリに上記のファイルを置き、以下のコマンドを実行します:

 patch -p0 < tdiary.20061126.patch
