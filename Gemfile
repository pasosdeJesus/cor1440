# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby ">=3.4"

gem "apexcharts"

gem "bcrypt"

gem "bootsnap"

gem "cancancan"

gem "devise" # Autenticación

gem "devise-i18n"

gem "jbuilder" # API JSON facil. Ver: https://github.com/rails/jbuilder

gem "kt-paperclip", # Anexos
  git: "https://github.com/kreeti/kt-paperclip.git"

gem "libxml-ruby"

gem "nokogiri"

gem "odf-report" # Genera ODT

gem "parslet"

gem "pg" # Postgresql

gem "prawn" # Generación de PDF

gem "prawnto_2", require: "prawnto"

gem "prawn-table"

gem "rack", "~> 2"

gem "rails", "~> 8.0"
# git: "https://github.com/rails/rails.git", branch: "6-1-stable"

gem "rails-i18n"

gem "redcarpet"

gem "rspreadsheet"

gem "rubyzip", "<= 2.4.1"

gem "simple_form" # Formularios simples

gem "sprockets-rails"

gem "stimulus-rails"

gem "turbo-rails"

gem "twitter_cldr" # ICU con CLDR

gem "tzinfo" # Zonas horarias

gem "will_paginate" # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento
# lógico y no alfabetico como las gemas anteriores)

gem "msip", # Motor generico
  git: "https://gitlab.com/pasosdeJesus/msip.git",
  branch: "main"
# path: "../msip"

gem "mr519_gen", # Motor de gestion de formularios y encuestas
  git: "https://gitlab.com/pasosdeJesus/mr519_gen.git",
  branch: "main"
# path: "../mr519_gen"

gem "heb412_gen", # Motor de nube y llenado de plantillas
  git: "https://gitlab.com/pasosdeJesus/heb412_gen.git",
  branch: "main"
# path: "../heb412_gen"

gem "cor1440_gen", # Motor Cor1440_gen
  git: "https://gitlab.com/pasosdeJesus/cor1440_gen.git",
  branch: "main"
# path: "../cor1440_gen"

group :development do
  gem "erd"

  gem "puma"

  gem "web-console"
end

group :development, :test do
  gem "brakeman"

  gem "bundler-audit"

  gem "code-scanning-rubocop"

  gem "colorize"

  gem "debug"

  gem "dotenv-rails"

  gem "rails-erd"

  gem "rubocop-minitest"

  gem "rubocop-rails"

  gem "rubocop-shopify"
end

group :test do
  gem "capybara"

  gem "cuprite"

  gem "simplecov"
end

group :production do
  gem "unicorn"
end
