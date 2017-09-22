class Longestcontinuoussbc < ActiveRecord::Base
    belongs_to :user
    belongs_to :institute, foreign_key: "imno"
    
    
   
   
end
