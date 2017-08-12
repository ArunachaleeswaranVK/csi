class Institute < ActiveRecord::Base
    
    has_many :sbcs, foreign_key: "imno" , dependent: :destroy
    has_many :nominating_authorities, foreign_key: "imno" , dependent: :destroy
    has_many :nominated_members, foreign_key: "imno" , dependent: :destroy
    
    
    
    self.primary_key = 'imno'
    
    def to_param
       imno.parameterize 
    end    
end
