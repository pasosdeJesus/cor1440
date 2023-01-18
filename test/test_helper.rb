ENV['RAILS_ENV'] ||= 'test'

require 'zeitwerk'
require 'simplecov'
Zeitwerk::Loader.eager_load_all # buscando que simplecov cubra más

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  protected
  def load_seeds
    load "#{Rails.root}/db/seeds.rb"
  end
end
