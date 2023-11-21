source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby ">=2.4"

gem "apexcharts"

gem "babel-transpiler"

gem "bcrypt"

gem "bootsnap", ">=1.1.0", require: false

gem "cancancan"

gem "cocoon", git: "https://github.com/vtamara/cocoon.git", branch: "new_id_with_ajax" # Formularios anidados (algunos con ajax)

gem "coffee-rails" # CoffeeScript para recuersos .js.coffee y vistas

gem "devise" # Autenticación 

gem "devise-i18n"

gem "execjs"

gem "jbuilder" # API JSON facil. Ver: https://github.com/rails/jbuilder

gem "jsbundling-rails"

gem "kt-paperclip",                 # Anexos
  git: "https://github.com/kreeti/kt-paperclip.git"

gem "libxml-ruby"

gem "nokogiri", ">=1.11.1"

gem "odf-report" # Genera ODT

gem "parslet"

gem "pg" # Postgresql

gem "prawn" # Generación de PDF

gem "prawnto_2",  :require => "prawnto"

gem "prawn-table"

gem "rails", ">= 7.0", "<7.1"
  #git: "https://github.com/rails/rails.git", branch: "6-1-stable"

gem "rails-i18n"

gem "redcarpet"

gem "rspreadsheet"

gem "rubyzip", ">= 2.0.0"

gem "sassc-rails" # CSS

gem "simple_form" # Formularios simples 

gem "sprockets-rails"

gem "stimulus-rails"

gem "turbo-rails", "~> 1.0"

gem "twitter_cldr" # ICU con CLDR

gem "tzinfo" # Zonas horarias

gem "will_paginate" # Listados en páginas


#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem "msip", # Motor generico
  git: "https://gitlab.com/pasosdeJesus/msip.git", branch: "renclase"
  #path: "../msip"

gem "mr519_gen", # Motor de gestion de formularios y encuestas
  git: "https://gitlab.com/pasosdeJesus/mr519_gen.git", branch: "renclase"
  #path: "../mr519_gen"

gem "heb412_gen",  # Motor de nube y llenado de plantillas
  git: "https://gitlab.com/pasosdeJesus/heb412_gen.git", branch: "renclase"
  #path: "../heb412_gen"

gem "cor1440_gen", # Motor Cor1440_gen
  git: "https://gitlab.com/pasosdeJesus/cor1440_gen.git", branch: "renclase"
  #path: "../cor1440_gen"


group :development do
  gem "erd"

  gem "puma"

  gem "rails-erd"

  gem "web-console"
end


group :development, :test do

  gem "debug"

  gem "colorize" # Color en terminal

  gem "dotenv-rails"
end

group :test do
  gem "capybara"

  gem "cuprite"

  gem "simplecov"
end


group :production do

  gem "unicorn"

end
