class Longestcontinuoussbc < ActiveRecord::Base
    belongs_to :user
    belongs_to :institute, foreign_key: "imno"
    
    def self.to_csv
    attributes = %w{id volunteers_added imno user_id last_but_before_year_vol_strength last_year_vol_strength current_year_vol_strength}

    

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |longestcontinuoussbc|
        csv << attributes.map{ |attr| longestcontinuoussbc.send(attr) }
      end
    end
    end
    
    
   
   
end
