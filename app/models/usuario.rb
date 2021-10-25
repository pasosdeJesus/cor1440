require 'cor1440_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base 
  include Cor1440Gen::Concerns::Models::Usuario

  has_attached_file :foto, 
    path: (Sip.ruta_anexos.to_s + "/fotos/:id_:filename")

  validates_attachment :foto, content_type: { 
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates :foto_file_name, length: { maximum: 255 }

  def rol_usuario
    # No tiene restricciones de oficina
  end


end
