class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :p_image
      t.integer :p_qnt
      t.text :p_market
      t.decimal :p_cost
      t.decimal :p_shipping_cost
      t.string :p_reference
      t.bigint :p_sourcing_date
      t.bigint :p_delevery_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
