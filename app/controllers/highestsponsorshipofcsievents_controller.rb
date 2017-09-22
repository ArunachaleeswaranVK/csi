class HighestsponsorshipofcsieventsController < ApplicationController
  
  before_action :limit_award, only: [:new, :create]   
  before_action :set_award , only: [:edit,:update,:show,:destroy]
  before_action :authenticate , only: [:new]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @highestsponsorshipofcsievent = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @highestsponsorshipofcsievents = Highestsponsorshipofcsievent.all
    end
    
    def show
        
    end    
    
    def new
        @highestsponsorshipofcsievent = current_user.build_highestsponsorshipofcsievent
        1.times { @highestsponsorshipofcsievent.supportforcsievents.build}
    end
    
    def create
        @highestsponsorshipofcsievent = current_user.build_highestsponsorshipofcsievent(highestsponsorshipofcsievent_params)
        
        if @highestsponsorshipofcsievent.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @highestsponsorshipofcsievent.update(highestsponsorshipofcsievent_params)
            redirect_to @highestsponsorshipofcsievent
        else
            render "edit"
        end    
    end
    
    def destroy
        @highestsponsorshipofcsievent.destroy
        redirect_to highestsponsorshipofcsieventes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def highestsponsorshipofcsievent_params
       params.require(:highestsponsorshipofcsievent).permit(:volunteers_added,:imno, :attachment,
       supportforcsievents_attributes: [:date_of_event,
       :name_of_event,:organised_by,:support_details,:monetary_value,:_destroy])
    end
    
    def set_award
       @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.highestsponsorshipofcsieventaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
