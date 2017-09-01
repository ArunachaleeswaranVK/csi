class Newsletteraward < ActiveRecord::Base
    has_many :detailsfornewsletterawards , dependent: :destroy
    accepts_nested_attributes_for :detailsfornewsletterawards , allow_destroy: true 
end
