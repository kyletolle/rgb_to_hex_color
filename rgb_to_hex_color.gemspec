Gem::Specification.new do |s|
  s.name     = 'rgb_to_hex_color'
  s.version  = '0.0.1'
  s.date     = '2014-08-17'
  s.summary  = 'Convert rgb colors to their hexadecimal value.'
  s.authors  = ['Kyle Tolle']
  s.email    = 'kyle@nullsix.com'
  s.files    = ['lib/rgb_to_hex_color.rb', 'spec/rgb_to_hex_color_spec.rb']
  s.license  = 'MIT'
  s.homepage = 'https://github.com/kyletolle/rgb_to_hex_color'

  s.add_development_dependency 'rspec', '~> 3.0', '>= 3.0.0'
end

