# frozen_string_literal: true

require "msip/version"

Msip.setup do |config|
  config.ruta_anexos = ENV.fetch(
    "MSIP_RUTA_ANEXOS",
    "#{Rails.root.join("archivos/anexos")}",
  )
  config.ruta_volcados = ENV.fetch(
    "MSIP_RUTA_VOLCADOS",
    "#{Rails.root.join("archivos/bd")}",
  )
  config.titulo = "Cor1440 #{Cor1440Gen::VERSION}"

  config.descripcion = "Aplicación genérica para proyectos y actividades con metodología de marco lógico"
  config.codigofuente = "https://gitlab.com/pasosdeJesus/cor1440"
  config.urlcontribuyentes = "https://gitlab.com/pasosdeJesus/cor1440_gen/-/graphs/main?ref_type=heads"
  config.urlcreditos = "https://gitlab.com/pasosdeJesus/cor1440_gen/-/blob/main/CREDITOS.md"
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
