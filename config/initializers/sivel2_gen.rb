require 'sip/version'

Sivel2Gen.setup do |config|
      config.ruta_anexos = "/var/www/htdocs/cor440/anexos"
      config.ruta_volcados = "/var/www/htdocs/cor440/db"
      # En heroku los anexos son super-temporales
      if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "Cor440 " + Sip::VERSION
end
