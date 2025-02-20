# frozen_string_literal: true

require "application_system_test_case"

class AccesoTest < ApplicationSystemTestCase
  test "no autentica con clave errada a usuario existente" do
    skip
    @usuario = Usuario.find_by(nusuario: "cor1440")
    @usuario.password = "cor1440"
    visit new_usuario_session_path
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: "ERRADA"
    click_button "Iniciar Sesión"

    assert_not page.has_content?("Administrar")
  end

  test "autentica con usuario existente en base inicial" do
    skip
    @usuario = Usuario.find_by(nusuario: "cor1440")
    @usuario.password = "cor1440"
    visit new_usuario_session_path
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: @usuario.password
    click_button "Iniciar Sesión"

    assert page.has_content?("Administrar")
  end
end
