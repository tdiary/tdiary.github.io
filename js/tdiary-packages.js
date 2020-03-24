/*
 * tdiary-packages.js: show tdiary package links
 *
 * Copyright (c) MATSUOKA Kohei <http://www.machu.jp/>
 * Distributed under the GPL2 or any later version.
 */

$(function() {
  var endpoint = "https://api.github.com/repos/tdiary/tdiary-core";

  $.get(endpoint + "/releases/latest", function(data) {
    var packages = {
      'tdiary-full':    { name: "フルセット", order: 1 },
      'tdiary':         { name: "基本セット", order: 2 },
      'tdiary-theme':   { name: "テーマ集",   order: 3 },
      'tdiary-blogkit': { name: "BlogKit",    order: 4 },
      'tdiary-contrib': { name: "contrib",    order: 5 }
    };

    var ul = $('<ul>');
    $(data.assets).map(function(index, asset) {
      var url = asset.browser_download_url;
      var name = url.match(/([^/]+)-v\d/)[1];
      return $('<li>')
        .data('order', packages[name].order)
        .append(
          $('<a>')
            .attr('href', url)
            .text(packages[name].name)
        );
    }).sort(function(a, b) {
      return a.data('order') - b.data('order');
    }).each(function(index, element) {
      ul.append(element);
    });

    $('div.tdiary-packages')
      .append(
        $('<a>')
          .attr('href', data.html_url)
          .text('tDiary ' + data.tag_name)
      )
      .append(ul);
  })
  .fail(function (){
    $('div.tdiary-packages').append('<p>パッケージ情報を取得できませんでした</p>');
  });
});
