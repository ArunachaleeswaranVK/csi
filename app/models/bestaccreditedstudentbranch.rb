class Bestaccreditedstudentbranch < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    
    
   
end