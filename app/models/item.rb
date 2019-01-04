class Item < ApplicationRecord
	belongs_to :itemcategory ,optional: true
	has_one :itemtax
	validates :itemcategoryid, presence: true
	validates :rate, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
    validates :name, :uniqueness => true

end
