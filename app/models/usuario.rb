# encoding: UTF-8

require 'sip/concerns/models/usuario'
require 'cor1440_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base 
  include Sip::Concerns::Models::Usuario
  include Cor1440Gen::Concerns::Models::Usuario

end
