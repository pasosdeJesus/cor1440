# encoding: UTF-8
require_dependency "cor1440_gen/concerns/controllers/actividades_controller"

module Cor1440Gen
  class ActividadesController < Heb412Gen::ModelosController

    include Cor1440Gen::Concerns::Controllers::ActividadesController

    before_action :set_actividad, 
      only: [:show, :edit, :update, :destroy],
      exclude: [:contar]
    load_and_authorize_resource class: Cor1440Gen::Actividad

    def atributos_show
      [ :id, 
        :fecha_localizada, 
        :nombre, 
        :lugar,
        :responsable,
        :corresponsables,
        :proyectofinanciero,
        :respuestafor,
        :objetivo,
        :resultado,
        :actorsocial,
        :listadoasistencia,
        :poblacion,
        :anexos
      ]
    end

    def atributos_index
      [ :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectofinanciero,
        :actividadpf, 
        :objetivo,
        :poblacion,
        :anexos
      ]
    end

    def atributos_form
      atributos_show - [:id, 'id']
    end

    def edit
      edit_cor1440_gen
      @listadoasistencia = true
      render layout: 'application'
    end

  end
end
