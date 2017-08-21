class Longestcontinuoussbc < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    has_many :sbc_tenure_details , dependent: :destroy
    accepts_nested_attributes_for :sbc_tenure_details , allow_destroy: true 
    
    validates :volunteers, presence: true   , numericality: { only_integer: true }    
    validates :volunteers_added,  numericality: { only_integer: true }
    validates :imno, presence: true
end
