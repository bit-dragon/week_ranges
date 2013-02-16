# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'week_ranges/version'

Gem::Specification.new do |gem|
  gem.name          = "Week_days"
  gem.version       = WeekRanges::VERSION
  gem.authors       = ["gmjorge"]
  gem.email         = ["jorge.em223@gmail.com"]
  gem.description   = %q{Library to create shortcuts for ranges of days}
  gem.summary       = %q{Generate shortcurs like [L-V] or [L, M, F], etc}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
	
	# Dependencies
	gem.add_development_dependency 'rspec'

	gem.add_dependency 'activesupport', '3.2.9'
end
