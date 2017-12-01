class BestcsiinternationalstudentseventhostsController < ApplicationController
   
    before_action :authenticate , only: [:new] 
    before_action :limit_award, only: [:new, :create]   
    before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def getname
        
        @bestcsiinternationalstudentseventhost = Institute.where("name like ?", "#{params[:name]}").first
    end
    
    def index
        @bestcsiinternationalstudentseventhosts = Bestcsiinternationalstudentseventhost.all
        respond_to do |format|
            format.html
            format.csv { send_data @bestcsiinternationalstudentseventhosts.to_csv, 
            filename: "bestcsiinternationalstudentseventhosts-#{Date.today}.csv" }
        end
    end
    
    def show
        
    end    
    
    def new
        @bestcsiinternationalstudentseventhost = current_user.build_bestcsiinternationalstudentseventhost
        2.times { @bestcsiinternationalstudentseventhost.internationalevents.build}
    end
    
    def create
        @bestcsiinternationalstudentseventhost = current_user.build_bestcsiinternationalstudentseventhost(bestcsiinternationalstudentseventhost_params)
        
        if @bestcsiinternationalstudentseventhost.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestcsiinternationalstudentseventhost.update(bestcsiinternationalstudentseventhost_params)
            redirect_to @bestcsiinternationalstudentseventhost
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestcsiinternationalstudentseventhost.destroy
        redirect_to bestcsiinternationalstudentseventhostes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def bestcsiinternationalstudentseventhost_params
       params.require(:bestcsiinternationalstudentseventhost).permit(
       :volunteers_added,:imno,:attachment,internationalevents_attributes: [:competetion_name,
       :date_of_event,:no_of_students_from_abroad,:country_name,:_destroy])
    end
    
    def set_award
       @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.bestcsiinternationalstudentseventhostaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
