class Box < ApplicationRecord
  has_many :items
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  has_rich_text :content

    def tag_list
        tag_ids
    end

    def tag_list=(input)
       input.each do |element|
          if element.to_i > 0
            self.tags << Tag.find_by!(id: element.to_i)
          else
            self.tags << Tag.create!(title: element)
          end
        end
    end
end
