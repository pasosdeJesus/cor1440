# frozen_string_literal: true

require_dependency "cor1440_gen/concerns/controllers/proyectosfinancieros_controller"

module Cor1440Gen
  class ProyectosfinancierosController < Heb412Gen::ModelosController
    include Cor1440Gen::Concerns::Controllers::ProyectosfinancierosController

    before_action :set_proyectofinanciero,
      only: [:show, :edit, :update, :destroy]
    skip_before_action :set_proyectofinanciero, only: [:validar]

    load_and_authorize_resource class: Cor1440Gen::Proyectofinanciero,
      only: [
        :new,
        :create,
        :destroy,
        :edit,
        :update,
        :index,
        :show,
        :objetivospf,
      ]

    def atributos_index
      [
        :id,
        :nombre,
      ] +
        [financiador_ids: []] +
        [
          :fechainicio_localizada,
          :fechacierre_localizada,
          :responsable,
          :proyectofinanciero_usuario,
        ] +
        [
          :compromisos,
          :monto,
          :observaciones,
          :objetivopf,
          :indicadorobjetivo,
          :resultadopf,
          :indicadorpf,
          :actividadpf,
        ]
    end

    def atributos_show
      atributos_index - [
        :objetivopf,
        :indicadorobjetivo,
        :resultadopf,
        :indicadorpf,
        :actividadpf,
      ] + [
        :marcologico,
        :caracterizacion,
        :beneficiario,
        :plantillahcm,
        :anexo_proyectofinanciero,
      ]
    end
  end
end
