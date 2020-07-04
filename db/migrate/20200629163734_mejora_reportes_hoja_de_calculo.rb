class MejoraReportesHojaDeCalculo < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      DELETE FROM heb412_gen_campoplantillahcm WHERE id in (5, 8, 9);
    SQL
    idp = 6
    ('E'..'F').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end

    idp = 10
    ('G'..'N').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end
    execute <<-SQL
      UPDATE heb412_gen_campoplantillahcm SET nombrecampo='proyecto' WHERE id=6;
      UPDATE heb412_gen_campoplantillahcm SET nombrecampo='actividad_de_marco_lógico' WHERE id=7;
      UPDATE heb412_gen_plantillahcm SET ruta='plantillas/listado_de_actividades.ods' WHERE id=1;
    SQL
  end


  def down
    idp = 17
    ('Q'..'J').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp -= 1
    end
    idp = 7
    ('G'..'F').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp -= 1
    end

    execute <<-SQL
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (5, 1, 'oficina', 'E');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (8, 1, 'areas', 'H');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (9, 1, 'subareas', 'I');
    SQL
  end
end
