class AddIndexSirenToIntercommunality < ActiveRecord::Migration[5.0]
  def change
    add_index :intercommunalities, :siren, unique: true
  end
end
