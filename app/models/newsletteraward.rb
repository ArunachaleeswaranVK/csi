class Newsletteraward < ActiveRecord::Base
    
    belongs_to :user
    has_many :detailsfornewsletterawards , dependent: :destroy
    accepts_nested_attributes_for :detailsfornewsletterawards , allow_destroy: true 
end
