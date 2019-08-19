class AddFormAttributeToIntercommunalities < ActiveRecord::Migration[5.0]
  def change
    add_column :intercommunalities, :form, :string
  end
end
