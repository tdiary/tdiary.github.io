#!/usr/bin/env ruby
# Update site files for a new tDiary release.
# Usage: ruby .github/scripts/update-release.rb VERSION DATE
#   VERSION: new release version (e.g. 5.6.0)
#   DATE: post date in YYYY-MM-DD (JST)

version, date = ARGV
abort "usage: #{$0} VERSION DATE" unless version && date
abort "invalid version: #{version}" unless version.match?(/\A\d+\.\d+\.\d+\z/)
abort "invalid date: #{date}" unless date.match?(/\A\d{4}-\d{2}-\d{2}\z/)

def replace_version(path, current_pattern, version)
  content = File.read(path)
  current = content[current_pattern, 1] or abort "current version not found in #{path}"
  if current == version
    puts "#{path}: already #{version}"
    return
  end
  File.write(path, content.gsub(current, version))
  puts "#{path}: #{current} -> #{version}"
end

replace_version("download.md", /^#### パッケージ版\((\d+\.\d+\.\d+)\)/, version)
replace_version("_includes/sidebar.html", %r{<p>(\d+\.\d+\.\d+)</p>}, version)

post = "_posts/#{date}-release-#{version.tr(".", "_")}.md"
if File.exist?(post)
  puts "#{post}: already exists, skipped"
else
  series = version.split(".").first(2).join(".")
  File.write(post, <<~POST)
    ---
    layout: post
    title: tDiary-#{version} リリース
    categories:
      - release
      - #{series}
    ---

    tDiary #{version} をリリースします。

    ## 本体(tdiary-core)の変更点
    * とくになし

    ## theme (tdiary-theme)の変更点
    * とくになし

    ## blogkit (tdiary-blogkit)の変更点
    * とくになし

    ## contrib (tdiary-contrib)の変更点
    * とくになし
  POST
  puts "#{post}: created"
end
