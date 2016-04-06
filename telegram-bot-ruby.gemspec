lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'telegram/bot'
require 'telegram/bot/version'

Gem::Specification.new do |spec|
  spec.name          = 'faraday-telegram-bot-ruby'
  spec.version       = Telegram::Bot::VERSION
  spec.authors       = ['Anton Prokhorov']
  spec.email         = ['a.prokhorov@rambler-co.ru']

  spec.summary       = "Ruby wrapper for Telegram's Bot API"
  spec.homepage      = 'https://github.com/rambler-digital-solutions/telegram-bot-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'net-http-persistent'
  spec.add_dependency 'virtus'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.4'
  spec.add_development_dependency 'nokogiri', '~> 1.6'
end
