class FotoUsuario < ActiveRecord::Migration[6.1]
  def change
    add_attachment :usuario, :foto
  end
end
