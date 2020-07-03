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
  end


  def down
    idp = 10
    ('J'..'Q').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end
    idp = 6
    ('F'..'G').each do |col|
      c = Heb412Gen::Campoplantillahcm.find(idp)
      c.columna = col
      c.save!
      idp += 1
    end

    execute <<-SQL
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (5, 1, 'oficina', 'E');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (8, 1, 'areas', 'H');
      INSERT INTO heb412_gen_campoplantillahcm (id, plantillahcm_id, nombrecampo, columna) VALUES (9, 1, 'subareas', 'I');
    SQL
  end
end
