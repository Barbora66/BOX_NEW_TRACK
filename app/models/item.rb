class Item < ApplicationRecord
    belongs_to :box
    has_one_attached :image
    
    validates_presence_of :title    
end

