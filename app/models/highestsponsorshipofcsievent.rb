class Highestsponsorshipofcsievent < ActiveRecord::Base
    belongs_to :institute , foreign_key: "imno"
    belongs_to :user
    
    has_many :supportforcsievents , dependent: :destroy
    accepts_nested_attributes_for :supportforcsievents , allow_destroy: true 
    
     
    
    
end
