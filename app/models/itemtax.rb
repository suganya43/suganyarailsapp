class Itemtax < ApplicationRecord
	belongs_to :item ,:optional=>"true"
	validates :tax_type,:itemid, presence: true
	validates :tax, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

end
