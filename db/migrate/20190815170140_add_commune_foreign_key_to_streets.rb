class AddCommuneForeignKeyToStreets < ActiveRecord::Migration[5.0]
  def change
    add_reference :streets, :commune, foreign_key: true
  end
end
