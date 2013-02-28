# encoding:utf-8

Gem::Specification.new do |gem|
  gem.name         = "standalone-activerecord"
  gem.version      = "0.0.1"

  gem.description  = "standalone ActiveRecord helpers."
  gem.summary      = gem.description
  gem.homepage     = "http://github.com/dougbradbury/standalone-activerecord"

  gem.authors      = ["Doug Bradbury", "Blake Mizerany", "Janko Marohnić"]
  gem.email        = "doug@bradbury.cc"

  gem.license      = "MIT"

  gem.files        = Dir["lib/**/*"] + ["README.md", "LICENSE"]
  gem.require_path = "lib"
  gem.test_files   = gem.files.grep(%r{^(test|spec|features)/})

  gem.required_ruby_version = ">= 1.9.2"
  gem.add_dependency "activerecord", "~> 3.0"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.10"
  gem.add_development_dependency "sqlite3"
end
