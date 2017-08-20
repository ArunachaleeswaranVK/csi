class Institute < ActiveRecord::Base
    
    has_many :sbcs, foreign_key: "imno" , dependent: :destroy
    
    has_many :nominated_members, foreign_key: "imno" , dependent: :destroy
    has_many :bestcsiinternationalstudentseventhosts, foreign_key: "imno" , dependent: :destroy
    has_many :highestsponsorshipofcsievents, foreign_key: "imno" , dependent: :destroy
    has_many :longestcontinuoussbcs , foreign_key: "imno" , dependent: :destroy
    has_many :facmaxpublishings , foreign_key: "imno" , dependent: :destroy
    has_many :paperpresenterintconferences , foreign_key: "imno" , dependent: :destroy
    has_many :studentmaxpublishings , foreign_key: "imno" , dependent: :destroy
    has_many :studentbranchactivists , foreign_key: "imno" , dependent: :destroy
    
    self.primary_key = 'imno'
    
    def to_param
       imno.parameterize 
       name.parameterize
    end

end
