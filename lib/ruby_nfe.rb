require 'ruby_nfe/version'
require 'happymapper'
require 'active_support/core_ext/hash'
require 'bigdecimal'
require 'savon'
require 'yaml'
require 'base64'
require 'active_model'
require 'i18n'

Dir[File.dirname(__FILE__) + '/**/*.rb'].each { |f| require f }

I18n.enforce_available_locales = false
I18n.default_locale = :"pt-BR"
I18n.load_path << File.expand_path('../../config/locale/pt-BR.yml', __FILE__)

module RubyNfe
end
