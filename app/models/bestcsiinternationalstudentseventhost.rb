class Bestcsiinternationalstudentseventhost < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    has_many :internationalevents , dependent: :destroy
    accepts_nested_attributes_for :internationalevents , allow_destroy: true 
    
    belongs_to :user
    
    # accepts_nested_attributes_for :addresses,
                    #          reject_if: ->(attrs) { attrs['city'].blank? || attrs['street'].blank? }
                    
     
    
    
end
