require 'cor1440_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base 
  include Cor1440Gen::Concerns::Models::Usuario

  def rol_usuario
    # No tiene restricciones de oficina
  end

end
