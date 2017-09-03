class Longestcontinuoussbc < ActiveRecord::Base
    belongs_to :user
    belongs_to :institute, foreign_key: "imno"
    
    
   
    validates :volunteers_added,  numericality: { only_integer: true }
    validates :imno, presence: true
end
