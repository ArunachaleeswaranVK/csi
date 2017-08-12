class Institute < ActiveRecord::Base
    
    self.primary_key = 'imno'
    
    def to_param
       imno.parameterize 
    end    
end
