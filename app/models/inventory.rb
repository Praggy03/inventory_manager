class Inventory < ApplicationRecord

	enum status: { inactive: 0, active: 1, deleted: 2 }
	
	validates :name, presence: true, allow_blank: false, uniqueness: true
	validates :description, presence: true, allow_blank: false
	validates :quantity, numericality: { greater_than_or_equal_to: 0 }

	has_many :shipment_inventory_mappings
	has_many :shipment, through: :shipment_inventory_mapping

end

