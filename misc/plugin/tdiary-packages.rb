require 'net/http'
require 'json'
require 'erb'

GITHUB_ENDPOINT = "https://api.github.com/repos/tdiary/tdiary-core"

def tdiary_packages_name(file)
  case file
  when /tdiary-blogkit/
    "BlogKit"
  when /tdiary-contrib/
    "contrib"
  when /tdiary-full/
    "フルセット"
  when /tdiary-plugin/
    "プラグイン"
  when /tdiary-theme/
    "テーマ集"
  else
    "基本セット"
  end
end

def tdiary_packages_latest
  uri = URI("#{GITHUB_ENDPOINT}/releases/latest")
  res = Net::HTTP.get_response(uri)
  return "ERROR: unable get package information" unless res.code == "200"
  release = JSON.parse(res.body)

  ERB.new(%q{
  <div>
    <p><%=ERB::Util.h release['tag_name'] %></p>
    <ul>
      <% release['assets'].each do |asset| %>
        <li>
          <a href="<%=ERB::Util.h asset['browser_download_url'] %>">
            <%=ERB::Util.h tdiary_packages_name(asset['browser_download_url']) %>
          </a>
        </li>
      <% end %>
    </ul>
  </div>
  }).result(binding)
end
