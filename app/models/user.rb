class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :bestaccreditedstudentbranch , dependent: :destroy
  has_one :bestcsiinternationalstudentseventhost , dependent: :destroy 
  has_one :highestsponsorshipofcsievent , dependent: :destroy 
  has_one :longestcontinuoussbc , dependent: :destroy 
  has_one :facmaxpublishing , dependent: :destroy 
  has_one :paperpresenter , dependent: :destroy 
  has_one :studentmaxpublishing , dependent: :destroy 
  has_one :studentbranchactivist , dependent: :destroy 
  has_one :bestthesisaward , dependent: :destroy 
  has_one :regionalchapteraward , dependent: :destroy 
  has_one :individualserviceaward , dependent: :destroy 
  has_one :newsletteraward , dependent: :destroy 
  
  
         
end
