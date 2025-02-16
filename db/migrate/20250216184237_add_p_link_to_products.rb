class AddPLinkToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :p_link, :string
  end
end
