# encoding: UTF-8

require_relative '../test_helper'

class AccesoTest < Capybara::Rails::TestCase
  include Capybara::DSL

  test "no autentica con clave errada a usuario existente" do
    skip # borra base al iniciar pruebas
    @usuario = Usuario.find_by(nusuario: 'cor1440')
    @usuario.password = 'cor1440'
    visit new_usuario_session_path 
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: 'ERRADA'
    click_button "Iniciar Sesión"
    assert_not page.has_content?("Administrar")
  end

  test "autentica con usuario creado en prueba" do
    skip # borra base al iniciar pruebas
    @usuario = Usuario.create PRUEBA_USUARIO
    visit new_usuario_session_path 
    puts page.body
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: @usuario.password
    click_button "Iniciar Sesión"
    assert page.has_content?("Administrar")
  end

  test "autentica con usuario existente en base inicial" do
    skip # borra base al iniciar pruebas
    @usuario = Usuario.find_by(nusuario: 'cor1440')
    @usuario.password = 'cor1440'
    visit new_usuario_session_path 
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: @usuario.password
    click_button "Iniciar Sesión"
    assert page.has_content?("Administrar")
  end

end

