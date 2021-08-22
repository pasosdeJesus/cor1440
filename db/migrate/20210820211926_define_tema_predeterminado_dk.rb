class DefineTemaPredeterminadoDk < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      UPDATE sip_tema SET
        nombre='PREDETERMINADO DASHBOARDKIT',
        fondo = '#eef0f6',
        color_fuente = '#293240',
        nav_ini = '#6450b9',
        nav_fin = '#6450b9',
        nav_fuente = '#ffffff',
        fondo_lista = '#e3e1fc',
        color_flota_subitem_fuente = '#7267EF',
        color_flota_subitem_fondo = '#e3e1fc',
        btn_primario_fondo_ini = '#7267EF',
        btn_primario_fondo_fin = '#7267EF',
        btn_primario_fuente = '#ffffff',
        btn_peligro_fondo_ini = '#ea4d4d',
        btn_peligro_fondo_fin = '#ea4d4d',
        btn_peligro_fuente = '#ffffff',
        btn_accion_fondo_ini = '#6c757d',
        btn_accion_fondo_fin= '#6c757d',
        btn_accion_fuente = '#ffffff',
        alerta_exito_fondo = '#d1f4e0',
        alerta_exito_fuente = '#0e773d',
        alerta_problema_fondo = '#fbdbdb',
        alerta_problema_fuente = '#8c2e2e'
      WHERE id=1;
    SQL
  end
  def down
    execute <<-SQL
      UPDATE sip_tema SET
        nombre='AZUL POR OMISIÓN',
        fondo = '#ffffff',
        color_fuente = '#000000',
        nav_ini = '#95c4ff',
        nav_fin = '#266dd3',
        nav_fuente = '#ffffff',
        fondo_lista = '#e3e1fc',
        color_flota_subitem_fuente = '#ffffff',
        color_flota_subitem_fondo = '#266dd3',
        btn_primario_fondo_ini = '#0088cc',
        btn_primario_fondo_fin = '#0044cc',
        btn_primario_fuente = '#ffffff',
        btn_peligro_fondo_ini = '#ee5f5b',
        btn_peligro_fondo_fin = '#bd362f',
        btn_peligro_fuente = '#ffffff',
        btn_accion_fondo_ini = '#ffffff',
        btn_accion_fondo_fin= '#e6e6e6',
        btn_accion_fuente = '#000000',
        alerta_exito_fondo = '#dff0d8',
        alerta_exito_fuente = '#468847',
        alerta_problema_fondo = '#f8d7da',
        alerta_problema_fuente = '#721c24'
      WHERE id=1;
    SQL
  end
end
