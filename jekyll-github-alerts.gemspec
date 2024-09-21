require_relative "lib/jekyll-github-alerts/version"

Gem::Specification.new do |s|
  s.name          = "jekyll-github-alerts"
  s.version       = Jekyll::GithubAlerts::VERSION
  s.authors       = ["George Waters"]
  s.email         = ["gwatersdev@gmail.com"]
  s.homepage      = "https://github.com/dunkmann00/jekyll-github-alerts"
  s.summary       = "A Jekyll plugin to render GitHub style markdown alerts"

  s.files         = Dir["lib/**/*"] + ["LICENSE", "README.md"]

  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"

  s.required_ruby_version = ">= 2.4.0"

  s.add_dependency "jekyll", ">= 4.0", "< 5.0"
  s.add_runtime_dependency "jekyll-octicons", "~> 19.8"
end
