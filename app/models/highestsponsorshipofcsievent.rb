class Highestsponsorshipofcsievent < ActiveRecord::Base
    belongs_to :institute , foreign_key: "imno"
    
    
    self.primary_key = 'imno'
    
    def to_param
       imno.parameterize 
    end  
    
end
