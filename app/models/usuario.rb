# encoding: UTF-8

require 'cor1440_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base 
  include Cor1440Gen::Concerns::Models::Usuario
end
