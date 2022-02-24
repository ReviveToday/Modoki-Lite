# frozen_string_literal: true

version = "1.1.0"

Gem::Specification.new do |spec|
  spec.name          = "modoki-lite"
  spec.version       = version
  spec.homepage      = "https://github.com/ReviveToday/Modoki-Lite"

  spec.author        = "ReviveToday"
  spec.email         = "code@soupbowl.io"

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/ReviveToday/Modoki-Lite/issues",
    "changelog_uri"     => "https://github.com/ReviveToday/Modoki-Lite/releases/tag/v#{version}",
    "homepage_uri"      => "https://revive.today",
    "source_code_uri"   => "https://github.com/ReviveToday/Modoki-Lite/tree/v#{version}",
    "funding_uri"       => "https://github.com/sponsors/jonaharagon",
    "plugin_type"       => "theme"
  }

  spec.summary       = "A ReviveToday theme based upon Jonah Aragon's Bootstrap template."
  spec.license       = "MIT"
  spec.description = <<-EOF
    A ReviveToday theme based upon Jonah Aragon's Bootstrap template.
  EOF

  spec.required_ruby_version = '>= 2.4.0'
  spec.required_rubygems_version = '>= 2.7.0'

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 4.0", "<5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "webrick", "~> 1.7"
  spec.add_development_dependency "bundler", "~> 2.2"
end
