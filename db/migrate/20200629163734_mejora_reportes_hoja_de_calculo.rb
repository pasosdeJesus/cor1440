class MejoraReportesHojaDeCalculo < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      DELETE FROM heb412_gen_campoplantillahcm WHERE id in (504, 507, 508);
    SQL
    idp = 505
    ('E'..'F').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end

    idp = 509
    ('G'..'N').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end
    execute <<-SQL
      UPDATE heb412_gen_campoplantillahcm SET nombrecampo='proyecto' WHERE id=505;
      UPDATE heb412_gen_campoplantillahcm SET nombrecampo='actividad_de_marco_lógico' WHERE id=506;
      UPDATE heb412_gen_plantillahcm SET ruta='plantillas/listado_de_actividades.ods' WHERE id=5;
    SQL
  end


  def down
    idp = 516
    ('Q'..'J').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp -= 1
    end
    idp = 506
    ('G'..'F').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp -= 1
    end

    execute <<-SQL
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (504, 5, 'oficina', 'E');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (507, 5, 'areas', 'H');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (508, 5, 'subareas', 'I');
    SQL
  end
end
