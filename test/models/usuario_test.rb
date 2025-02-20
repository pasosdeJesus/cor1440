# frozen_string_literal: true

require_relative "../test_helper"

class UsuarioTest < ActiveSupport::TestCase
  PRUEBA_USUARIO = {
    nusuario: "admin",
    password: "sjrven123",
    nombre: "admin",
    descripcion: "admin",
    rol: 1,
    idioma: "es_CO",
    email: "usuario1@localhost",
    encrypted_password: "$2a$10$uMAciEcJuUXDnpelfSH6He7BxW0yBeq6VMemlWc5xEl6NZRDYVA3G",
    sign_in_count: 0,
    fechacreacion: "2014-08-05",
    fechadeshabilitacion: nil,
  }

  test "valido" do
    usuario = Usuario.create(PRUEBA_USUARIO)

    assert usuario.valid?
    usuario.destroy
  end

  test "no valido" do
    usuario = Usuario.new(PRUEBA_USUARIO)
    usuario.nusuario = ""

    assert_not usuario.valid?
    usuario.destroy
  end
end
