# frozen_string_literal: true

require "cor1440_gen/concerns/controllers/usuarios_controller"

class UsuariosController < Msip::ModelosController
  include Cor1440Gen::Concerns::Controllers::UsuariosController

  # Sin definicion de autoridad por ser requerido por no autenticados

  def atributos_index
    [
      :id,
      :nusuario,
      :nombre,
      :email,
      :grupo_ids,
      :foto,
      :habilitado,
    ]
  end

  def atributos_form
    r = []
    if can?(:create, ::Usuario)
      r += [
        :nusuario,
        :nombre,
        :descripcion,
      ]
    end
    if can?(:manage, ::Usuario)
      r += [:rol]
    end
    if can?(:create, ::Usuario)
      r += [
        :email,
        :tema,
        :msip_grupo,
        :foto,
        :fechacreacion,
        :fechadeshabilitacion,
      ]
    end
    if can?(:manage, ::Usuario)
      r += [
        :idioma,
        :encrypted_password,
        :failed_attempts,
        :unlock_token,
        :locked_at,
      ]
    end
    r
  end

  def atributos_show
    r = []
    if can?(:read, ::Usuario)
      r += [
        :nusuario,
        :id,
        :nombre,
        :grupos,
        :email,
        :foto,
      ]
    end
    if can?(:manage, ::Usuario)
      r += [
        :rol,
        :idioma,
        :encrypted_password,
        :fechacreacion_localizada,
        :fechadeshabilitacion_localizada,
        :failed_attempts,
        :unlock_token,
        :locked_at,
      ]
    end
    r
  end

  def atributos_show_json
    atributos_show
  end

  def index_reordenar(c)
    if !params || !params[:filtro] || !params[:filtro][:bushabilitado]
      c = c.where("usuario.fechadeshabilitacion IS NULL")
    end
    c = c.reorder([:nombre])
    c
  end

  def foto
    unless params[:id].nil?
      @usuario = Usuario.find(params[:id].to_i)
      ruta = @usuario.foto_file_name
      n = if !ruta.nil?
        format(
          Msip.ruta_anexos.to_s + "/fotos/%d_%s",
          @usuario.id.to_i,
          File.basename(ruta),
        )
      else
        Msip.ruta_anexos.to_s + "/fotos/predeterminada.png"
      end
      logger.debug("Descargando #{n}")
      send_file(n, x_sendfile: true)
    end
  end

  def lista_params
    p = lista_params_cor1440_gen + [:foto]
    p
  end
end
