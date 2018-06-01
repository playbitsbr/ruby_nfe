
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_nfe/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_nfe"
  spec.version       = RubyNfe::VERSION
  spec.authors       = ["Fabiano Felipe"]
  spec.email         = ["fabiano@playbits.com.br"]

  spec.summary       = %q{GEM para validação e emissão da NF-e/NFC-e}
  spec.description   = %q{Emissão da NF-e/NFC-e}

  spec.homepage      = "http://www.rubynfe.com.br"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-expectations'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rb-fsevent'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency "coveralls"
  spec.add_runtime_dependency     'nokogiri-happymapper'
  spec.add_runtime_dependency     'savon'
  spec.add_runtime_dependency     'formdata'
  spec.add_runtime_dependency     'hanami-validations'
  spec.add_runtime_dependency     'activesupport'
end
