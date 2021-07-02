source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>=2.4'

gem 'apexcharts'

gem 'bcrypt'

#gem 'bigdecimal'

gem 'bootsnap', '>=1.1.0', require: false

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' # CoffeeScript para recuersos .js.coffee y vistas

gem 'devise' # Autenticación 

gem 'devise-i18n'

gem 'execjs'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'jsbundling-rails'

gem 'kt-paperclip',                 # Anexos
  git: 'https://github.com/kreeti/kt-paperclip.git'

gem 'libxml-ruby'

gem 'nokogiri', '>=1.11.1'

gem 'odf-report' # Genera ODT

gem 'parslet'

gem 'pg' # Postgresql

gem 'prawn' # Generación de PDF

gem 'prawnto_2',  :require => 'prawnto'

gem 'prawn-table'

gem 'rails', '~> 7.0'
  #git: 'https://github.com/rails/rails.git', branch: '6-1-stable'

gem 'rails-i18n'

gem 'redcarpet'

gem 'rspreadsheet'

gem 'rubyzip', '>= 2.0.0'

gem 'sassc-rails' # CSS

gem 'simple_form' # Formularios simples 

gem 'sprockets-rails'

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

<<<<<<< HEAD
=======
<<<<<<< HEAD
gem 'webpacker', '6.0.0.rc.1'
=======
gem 'will_paginate' # Listados en páginas

gem 'webpacker',#, '~> 5.4'       # Traduce y compila modulos Javascript
  git: 'https://github.com/rails/webpacker'
>>>>>>> 81d55d1 (actualiza a webpacker 6)

>>>>>>> f1ef8fa (actualiza a webpacker 6)
gem 'will_paginate' # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  git: 'https://github.com/pasosdeJesus/sip.git', branch: :rails7jses
  #path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
<<<<<<< HEAD
  git: 'https://github.com/pasosdeJesus/mr519_gen.git', branch: :rails7jses
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git', branch: :rails7jses
  #path: '../heb412_gen'

gem 'cor1440_gen', # Motor Cor1440_gen
  git: 'https://github.com/pasosdeJesus/cor1440_gen.git', branch: :rails7jses
  #path: '../cor1440_gen'


group :development do
  gem 'erd'

  gem 'puma'
  
  gem 'rails-erd'

  gem 'web-console'
end


group :development, :test do

  gem 'byebug'

  gem 'colorize' # Color en terminal

  gem 'dotenv-rails'
end

group :test do

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov', '<0.18' # Debido a https://github.com/codeclimate/test-reporter/issues/418

end


group :production do

  gem 'unicorn'

end
