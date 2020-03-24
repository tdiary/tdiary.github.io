# tdiary-packages.rb: show tdiary package links
# 
# Copyright (c) MATSUOKA Kohei <http://www.machu.jp/>
# Distributed under the GPL2 or any later version.

enable_js('tdiary-packages.js')

def tdiary_packages
  %Q(<div class="tdiary-packages"></div>)
end
