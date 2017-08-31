lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'label_colorize/version'

Gem::Specification.new do |spec|
  spec.name          = 'label_colorize'
  spec.version       = LabelColorize::VERSION
  spec.authors       = ['Ildar Shaynurov']
  spec.email         = ['shaynurov@gmail.com']

  spec.summary       = %(Generate color for specific label)
  spec.description   = %(Generate color for specific label based on hue and saturation which allow to have more consistent colors)
  spec.homepage      = 'https://github.com/shir/label_colorize'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
