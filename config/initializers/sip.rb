require 'sip/version'

Sip.setup do |config|
      config.ruta_anexos = "/var/www/resbase/cor1440/anexos/"
      config.ruta_volcados = "/var/www/resbase/cor1440/"
      # En heroku los anexos son super-temporales
      if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "Cor1440 " + Cor1440Gen::VERSION
end
