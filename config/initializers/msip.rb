require 'msip/version'

Msip.setup do |config|
  config.ruta_anexos = ENV.fetch('SIP_RUTA_ANEXOS', 
                                 "#{Rails.root}/archivos/anexos")
  config.ruta_volcados = ENV.fetch('SIP_RUTA_VOLCADOS',
                                   "#{Rails.root}/archivos/bd")
  # En heroku los anexos son super-temporales
  if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "Cor1440 #{Cor1440Gen::VERSION}"

  config.descripcion = "Aplicación genérica para proyectos y actividades con metodología de marco lógico"
  config.codigofuente = "https://github.com/pasosdeJesus/cor1440"
  config.urlcontribuyentes = "https://github.com/pasosdeJesus/cor1440_gen/graphs/contributors"
  config.urlcreditos = "https://github.com/pasosdeJesus/cor1440_gen/blob/master/CREDITOS.md"
  config.agradecimientoDios = "<p>
Agradecemos a Dios que es Dios de orden
</p>
<blockquote>
<p>
Pero hágase todo decentemente y con orden.
</p>
<p>I Corintios 14:40</p>
</blockquote>".html_safe

end
