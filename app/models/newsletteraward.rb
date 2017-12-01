class Newsletteraward < ActiveRecord::Base
    
    belongs_to :user
    has_many :detailsfornewsletterawards , dependent: :destroy
    accepts_nested_attributes_for :detailsfornewsletterawards , allow_destroy: true 
    
    def self.to_csv
    attributes = %w{id chapter user_id other_info
        detailsfornewsletterawards_id date_of_publication title remarks newsletteraward_id
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |newsletteraward|
               newsletteraward.detailsfornewsletterawards.each do |detailsfornewsletteraward|
               
                  csv <<  [newsletteraward.id, newsletteraward.chapter ,
                  newsletteraward.other_info , newsletteraward.user_id,
                  
                  detailsfornewsletteraward.id,
                   detailsfornewsletteraward.date_of_publication, detailsfornewsletteraward.title, 
                   detailsfornewsletteraward.remarks,
                  detailsfornewsletteraward.newsletteraward_id]
               end
      end
    end
    
    
    end 
end
