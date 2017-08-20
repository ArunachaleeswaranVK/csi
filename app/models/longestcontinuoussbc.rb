class Longestcontinuoussbc < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    has_many :sbc_tenure_details , dependent: :destroy
    accepts_nested_attributes_for :sbc_tenure_details , allow_destroy: true 
end
