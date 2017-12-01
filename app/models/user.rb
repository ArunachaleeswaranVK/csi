class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable
         
  after_create :skip_conf!

  def skip_conf!
    self.confirm if Rails.env.development?
  end   
         
  devise :authenticatable, :timeoutable, :validatable, :timeout_in => 15.minutes
         
  has_one :bestaccreditedstudentbranch , dependent: :destroy
  has_one :bestcsiinternationalstudentseventhost , dependent: :destroy 
  has_one :highestsponsorshipofcsievent , dependent: :destroy 
  has_one :longestcontinuoussbc , dependent: :destroy 
  has_one :facmaxpublishing , dependent: :destroy 
  has_one :paperpresenter , dependent: :destroy 
  has_one :studentmaxpublishing , dependent: :destroy 
  has_many :studentbranchactivists , dependent: :destroy 
  has_one :bestthesisaward , dependent: :destroy 
  has_one :regionalchapteraward , dependent: :destroy 
  # ask and change it to has many
  has_many :individualserviceawards , dependent: :destroy  
  has_one :newsletteraward , dependent: :destroy
  
  def bestaccreditedstudentbranchaward_review(award)
    Bestaccreditedstudentbranch.where(user_id: self).first.present?
    
  end
  
  def bestcsiinternationalstudentseventhostaward_review(award)
    Bestcsiinternationalstudentseventhost.where(user_id: self).first.present?
    
  end
  
  def highestsponsorshipofcsieventaward_review(award)
    Highestsponsorshipofcsievent.where(user_id: self).first.present?
    
  end
  
  def longestcontinuoussbcaward_review(award)
    Longestcontinuoussbc.where(user_id: self).first.present?
    
  end
  
  def studentmaxpublishingaward_review(award)
    Studentmaxpublishing.where(user_id: self).first.present?
    
  end
  
 
  
  def facmaxpublishingaward_review(award)
    Facmaxpublishing.where(user_id: self).first.present?
    
  end
  
  def paperpresenteraward_review(award)
    Paperpresenter.where(user_id: self).first.present?
    
  end
  
  def bestthesisaward_review(award)
    Bestthesisaward.where(user_id: self).first.present?
  end
  
  def regionalchapteraward_review(award)
    Regionalchapteraward.where(user_id: self).first.present?
    
  end
  
  def newsletteraward_review(award)
    Newsletteraward.where(user_id: self).first.present?
  end
  
  def self.to_csv
    attributes = %w{id email
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
  
  
         
end
