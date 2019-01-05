class Changecolumn < ActiveRecord::Migration[5.1]
  def change
  	def self.up
     change_column :itemtax, :tax, :decimal, :precision => 6, :scale => 2
     change_column :item, :rate, :decimal, :precision => 6, :scale => 2

   end
  end
end
