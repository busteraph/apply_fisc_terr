class CreateIntercommunalities < ActiveRecord::Migration[5.0]
  def change
    create_table :intercommunalities do |t|
      t.string :name
      t.string :siren

      t.timestamps
    end
  end
end
