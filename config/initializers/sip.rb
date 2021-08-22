require 'sip/version'

Sip.setup do |config|
  config.ruta_anexos = ENV.fetch('SIP_RUTA_ANEXOS', 
                                 "#{Rails.root}/archivos/anexos")
  config.ruta_volcados = ENV.fetch('SIP_RUTA_VOLCADOS',
                                   "#{Rails.root}/archivos/bd")
  # En heroku los anexos son super-temporales
  if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "Cor1440 #{Cor1440Gen::VERSION}"
  config.colorom_fondo = '#eef0f6'
  config.colorom_color_fuente = '#293240'
  config.colorom_nav_ini = '#6450b9'
  config.colorom_nav_fin = '#6450b9'
  config.colorom_nav_fuente = '#ffffff'
  config.colorom_fondo_lista = '#e3e1fc'
  config.colorom_btn_primario_fondo_ini = '#7267ef'
  config.colorom_btn_primario_fondo_fin = '#7267ef'
  config.colorom_btn_primario_fuente = '#ffffff'
  config.colorom_btn_peligro_fondo_ini = '#ea4d4d'
  config.colorom_btn_peligro_fondo_fin = '#ea4d4d'
  config.colorom_btn_peligro_fuente = '#ffffff'
  config.colorom_btn_accion_fondo_ini = '#6c757d'
  config.colorom_btn_accion_fondo_fin= '#6c757d'
  config.colorom_btn_accion_fuente = '#ffffff'
  config.colorom_alerta_exito_fondo = '#d1f4e0'
  config.colorom_alerta_exito_fuente = '#0e773d'
  config.colorom_alerta_problema_fondo = '#fbdbdb'
  config.colorom_alerta_problema_fuente = '#8c2e2e'
end
