class Paperpresenter < ActiveRecord::Base
   
    belongs_to :user
    
    has_many :paperpresenterdetails , dependent: :destroy
    accepts_nested_attributes_for :paperpresenterdetails , allow_destroy: true
    
   
end
