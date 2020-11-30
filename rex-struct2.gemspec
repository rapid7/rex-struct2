# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rex/struct2/version'

Gem::Specification.new do |spec|
  spec.name          = "rex-struct2"
  spec.version       = Rex::Struct2::VERSION
  spec.authors       = ['Metasploit Hackers']
  spec.email         = ['msfdev@metasploit.com']

  spec.summary       = %q{Rex C-Struct Library}
  spec.description   = %q{Ruby Exploitation(Rex) library for generating/manipulating C-Style structs}
  spec.homepage      = "https://github.com/rapid7/rex-struct2"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
