source 'https://rubygems.org'

ruby '~>2.4'

# Rails (internacionalización)
gem "rails", '~>5.1.0'

gem "rails-i18n"

gem "odf-report", git: 'https://github.com/vtamara/odf-report.git', branch: 'update-rubyzip'


# Postgresql
gem "pg"

gem 'puma'

# CSS
gem "sass"

# Color en terminal
gem "colorize"

# Generación de PDF
gem "prawn"
gem "prawnto_2",  :require => "prawnto"
gem "prawn-table"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier"

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails"

# jquery como librería JavaScript
gem "jquery-rails"

gem "jquery-ui-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks"

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "font-awesome-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", git: "https://github.com/vtamara/cocoon.git"

# Autenticación y roles
gem "devise"
gem "devise-i18n"
gem "cancancan"
gem "bcrypt"

# Listados en páginas
gem "will_paginate"

# ICU con CLDR
gem 'twitter_cldr'

# Maneja adjuntos
gem "paperclip"

# Zonas horarias
gem "tzinfo"
gem "tzinfo-data"

# Motor de SIVeL 2
gem 'sip', git: "https://github.com/pasosdeJesus/sip.git", branch: 'bas_modelo'
#gem 'sip', path: '../sip'

# Motor heb412_gen para manejar archivos como nube y plantillas
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git'
#gem 'heb412_gen', path: '../heb412_gen/'

# Motor Cor1440_gen
gem 'cor1440_gen', git: "https://github.com/pasosdeJesus/cor1440_gen.git"
#gem "cor1440_gen", path: '../cor1440_gen'

gem 'chosen-rails'
gem 'rspreadsheet'
gem 'libxml-ruby'

# Los siguientes son para desarrollo o para pruebas con generadores
group :development do

  # Consola irb en páginas con excepciones o usando <%= console %> en vistas
  gem 'web-console'

end

group :development, :test do
  # Depurar
  #gem 'byebug'
end

group :test do
  # Acelera ejecutando en fondo.  https://github.com/jonleighton/spring
  gem "spring"

  gem 'rails-controller-testing'

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  gem "launchy"

  gem "connection_pool"
  gem "minitest-reporters"
  gem "mocha"
  gem "poltergeist"
  gem 'capybara'
  gem 'minitest-rails-capybara'

  gem 'simplecov'

  # Para examinar errores, usar "rescue rspec" en lugar de "rspec"
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end


group :production do
  # Para despliegue
  gem "unicorn"

  # Requerido por heroku para usar stdout como bitacora
  gem "rails_12factor"
end


