class Bestaccreditedstudentbranch < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    
    validates :imno, presence: true
end