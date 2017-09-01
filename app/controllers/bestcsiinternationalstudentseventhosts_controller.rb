class BestcsiinternationalstudentseventhostsController < ApplicationController
   
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    before_action :authenticate , only: [:new]
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def getname
        
        @bestcsiinternationalstudentseventhost = Institute.where("name like ?", "#{params[:name]}").first
    end
    
    def index
        @bestcsiinternationalstudentseventhosts = Bestcsiinternationalstudentseventhost.all
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
       params.require(:bestcsiinternationalstudentseventhost).permit(:volunteers,
       :volunteers_added,:imno,internationalevents_attributes: [:competetion_name,
       :date_of_event,:no_of_students_from_abroad_with_country_name,:_destroy])
    end
    
    def set_award
       @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.find(params[:id])
    end
end
