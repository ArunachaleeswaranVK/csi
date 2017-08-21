class Bestcsiinternationalstudentseventhost < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    has_many :internationalevents , dependent: :destroy
    accepts_nested_attributes_for :internationalevents , allow_destroy: true 
    
    # accepts_nested_attributes_for :addresses,
                    #          reject_if: ->(attrs) { attrs['city'].blank? || attrs['street'].blank? }
                    
    validates :volunteers, presence: true   , numericality: { only_integer: true }    
    validates :volunteers_added,  numericality: { only_integer: true }
    validates :imno, presence: true
    
    
end
