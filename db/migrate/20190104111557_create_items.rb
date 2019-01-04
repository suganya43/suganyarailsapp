class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :itemcategoryid
      t.string :name
      t.decimal :rate

      t.timestamps
    end
  end
end
