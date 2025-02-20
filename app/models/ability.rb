# frozen_string_literal: true

class Ability < Cor1440Gen::Ability
  def tablasbasicas
    Msip::Ability::BASICAS_PROPIAS + BASICAS_PROPIAS - [
      ["Msip", "fuenteprensa"],
      ["Msip", "oficina"],
      ["Cor1440Gen", "proyecto"],
      ["Msip", "tdocumento"],
      ["Msip", "trelacion"],
      ["Msip", "tsitio"],
    ]
  end

  # Autorizacion con CanCanCan
  def initialize(usuario = nil)
    initialize_cor1440_gen(usuario)
    cannot(:read, Msip::Oficina)
    if !usuario || usuario.fechadeshabilitacion || !usuario.rol
      nil
    end
  end # initialize
end
