# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nitron/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Green", "Juan Castaneda"]
  gem.email         = ["juanger@gmail.com"]
  gem.description   = "CoreData RubyMotion wrapper extracted from nitron"
  gem.summary       = "CoreData RubyMotion wrapper extracted from nitron"
  gem.homepage      = "https://github.com/juanger/nitron_data"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nitron_data"
  gem.require_paths = ["lib"]
  gem.version       = Nitron::VERSION

  gem.add_development_dependency 'bacon'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'nokogiri'
end
