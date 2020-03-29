# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-tagged_udpa"
  spec.version       = "0.0.7"
  spec.authors       = ["xiaof"]
  spec.email         = ["xiao000011@gmail.com"]

  spec.summary       = %q{fluentd input/output plugin for tagged UDP message}
  spec.description   = %q{fluentd input/output plugin for tagged UDP message}
  spec.homepage      = "https://github.com/xiaof-github/fluent-plugin-tagged_udp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.gsub(/images\/[\w\.]+\n/, "").split($/)
  spec.bindir        = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", ">= 0.10.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
