class State < ApplicationRecord
  
  validates :name, presence: true, allow_blank: false, uniqueness: true

  belongs_to :country
  
end
