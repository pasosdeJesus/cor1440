source 'https://rubygems.org'

ruby '>=2.4'


gem 'bcrypt'

gem 'bigdecimal'

gem 'bootsnap', '>=1.1.0', require: false

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' # CoffeeScript para recuersos .js.coffee y vistas

gem 'devise' # Autenticación 

gem 'devise-i18n'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'libxml-ruby'

gem 'odf-report' # Genera ODT

gem 'paperclip' # Maneja adjuntos

gem 'pg' # Postgresql

gem 'prawn' # Generación de PDF

gem 'prawnto_2',  :require => 'prawnto'

gem 'prawn-table'

gem 'puma', '>= 4.3.1'

gem 'rails', '~> 6.0.0.rc1' # Rails (internacionalización)

gem 'rails-i18n'

gem 'rspreadsheet'

gem 'rubyzip', '>= 2.0.0'

gem 'sassc-rails' # CSS

gem 'simple_form' # Formularios simples 

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'will_paginate' # Listados en páginas

gem 'webpacker'



#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  git: 'https://github.com/pasosdeJesus/sip.git'
  #path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git'
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git'
  #path: '../heb412_gen'

gem 'cor1440_gen', # Motor Cor1440_gen
  git: 'https://github.com/pasosdeJesus/cor1440_gen.git'
  #path: '../cor1440_gen'




group :development do

  gem 'web-console'

end


group :development, :test do

  #gem 'byebug'

  gem 'colorize' # Color en terminal
end

group :test do

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov'

  gem 'spring'

end


group :production do

  gem 'unicorn'

end
