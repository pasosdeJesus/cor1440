module ApplicationHelper
  #include Sip::DashboardkitHelper


    # Genera opcion menú
    def opcion_menu_dk(opcionmenu, url, opciones={})
      cop = opciones.clone
      if cop[:desplegable] || cop[:dropdown]
        cop.delete(:desplegable)
        cop.delete(:dropdown)
        r = link_to opcionmenu, url, cop.merge({class: 'dropdown-item'})
      else
        r = content_tag(:li, class: 'pc-item') do
          link_to opcionmenu, url, cop.merge({class: 'pc-link'})
        end
      end
      return r
    end
    module_function :opcion_menu_dk

end
