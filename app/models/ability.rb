# encoding: UTF-8
class Ability  < Cor1440Gen::Ability

  # Autorizacion con CanCanCan
  def initialize(usuario = nil)
    # Sin autenticación puede consultarse información geográfica 
    can :read, [Sip::Pais, Sip::Departamento, Sip::Municipio, Sip::Clase]
    if !usuario || usuario.fechadeshabilitacion
      return
    end
    can :nuevo, Cor1440Gen::Actividad

    can :read, Heb412Gen::Doc
    can :read, Heb412Gen::Plantilladoc
    can :read, Heb412Gen::Plantillahcm
    can :read, Heb412Gen::Plantillahcr

    can :descarga_anexo, Sip::Anexo
    can :contar, Sip::Ubicacion
    can :buscar, Sip::Ubicacion
    can :lista, Sip::Ubicacion
    can :nuevo, Sip::Ubicacion

    if !usuario.nil? && !usuario.rol.nil? then
      case usuario.rol 
      when Ability::ROLSISTACT

        can :read, Cor1440Gen::Actividad
        can :new, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :read, Cor1440Gen::FormularioTipoindicador
        can :read, Cor1440Gen::Informe
        can :read, Cor1440Gen::Proyectofinanciero

        can [:new, :create, :read, :index, :edit, :update],
          Sip::Actorsocial
        can :manage, Sip::Persona

      when Ability::ROLCOOR
        can :new, Usuario
        can [:read, :manage], Usuario, oficina: { id: usuario.oficina_id}

        can :manage, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :read, Cor1440Gen::FormularioTipoindicador
        can :manage, Cor1440Gen::Informe
        can :read, Cor1440Gen::Proyectofinanciero

        can [:new, :create, :read, :index, :edit, :update],
          Sip::Actorsocial
        can :manage, Sip::Persona
      when Ability::ROLINV
        cannot :buscar, Sip::Actividad
        can :read, Sip::Actividad
      when Ability::ROLADMIN, Ability::ROLDIR
        can :manage, Cor1440Gen::Actividad
        can :manage, Cor1440Gen::Campotind
        can :manage, Cor1440Gen::Financiador
        can :manage, Cor1440Gen::FormularioTipoindicador
        can :manage, Cor1440Gen::Indicadorpf
        can :manage, Cor1440Gen::Informe
        can :manage, Cor1440Gen::Mindicadorpf
        can :manage, Cor1440Gen::Proyectofinanciero
        can :manage, Cor1440Gen::Sectoractor
        can :manage, Cor1440Gen::Tipoindicador

        can :manage, Heb412Gen::Doc
        can :manage, Heb412Gen::Plantilladoc
        can :manage, Heb412Gen::Plantillahcm
        can :manage, Heb412Gen::Plantillahcr
        
        can :manage, Mr519Gen::Formulario

        can :manage, Sip::Actorsocial
        can :manage, Sip::Persona

        can :manage, Usuario
        can :manage, :tablasbasicas
        tablasbasicas.each do |t|
          c = Ability.tb_clase(t)
          can :manage, c
        end
      end
    end
  end

end

