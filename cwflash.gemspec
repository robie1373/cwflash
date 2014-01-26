# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cwflash/version'

Gem::Specification.new do |spec|
  spec.name          = "cwflash"
  spec.version       = Cwflash::VERSION
  spec.authors       = ["Robie Lutsey"]
  spec.email         = ["robie1373@gmail.com"]
  spec.summary       = %q{Flash card type game for learning cw (morse code).}
  spec.description   = %q{Flash card will play a game with you. It plays cw and you type the character(s). Flash cards are kept in a json file. A set of character sets in stored in the spec directory.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.1.1"
  spec.add_development_dependency "rspec"

  spec.add_dependency "brasspounder", "~> 0.0"
  spec.add_dependency "querinator", "~> 0.0.2"
  spec.add_dependency "highline", "~> 1.6.20"
end
