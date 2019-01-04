class CreateItemtaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :itemtaxes do |t|
      t.integer :itemid
      t.string :tax_type
      t.decimal :tax

      t.timestamps
    end
  end
end
