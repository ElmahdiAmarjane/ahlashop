class AddPNameToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :p_name, :string
  end
end
