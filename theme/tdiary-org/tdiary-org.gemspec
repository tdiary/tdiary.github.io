# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "tdiary-org"
  spec.version       = "0.1.0"
  spec.authors       = ["Tada, Tadashi"]
  spec.email         = ["t@tdtds.jp"]

  spec.summary       = "Jekyll theme for tDiary.org"
  spec.homepage      = "https://tdiary.org"
  spec.license       = "GPL"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
