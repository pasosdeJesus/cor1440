# frozen_string_literal: true

require "application_system_test_case"

class IniciarSesionTest < ApplicationSystemTestCase
  test "iniciar sesión" do
    Msip::CapybaraHelper.iniciar_sesion(
      self, Rails.configuration.relative_url_root, "cor1440", "cor1440"
    )
  end
end
