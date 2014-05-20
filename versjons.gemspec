$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "versjons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "versjons"
  s.version     = Versjons::VERSION
  s.authors     = ["Kristian Rasmussen"]
  s.email       = ["me@krx.io"]
  s.homepage    = "http://krx.io"
  s.summary     = "Shows current application version for a rails app"
  s.description = "Will read the version from views/versjons/version.txt.erb"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
