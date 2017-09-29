class StudentbranchactivistsController < ApplicationController
    
    before_action :authenticate , only: [:new] 
     before_action :limit_award, only: [:new, :create]   
     before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @studentbranchactivist = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @studentbranchactivists = Studentbranchactivist.all
    end
    
    def show
        
    end    
    
    def new
        @studentbranchactivist = current_user.build_studentbranchactivist
        2.times { @studentbranchactivist.eventdetailsbystudentactivists.build}
    end
    
    def create
        @studentbranchactivist = current_user.build_studentbranchactivist(studentbranchactivist_params)
        
        if @studentbranchactivist.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @studentbranchactivist.update(studentbranchactivist_params)
            redirect_to @studentbranchactivist
        else
            render "edit"
        end    
    end
    
    def destroy
        @studentbranchactivist.destroy
        redirect_to studentbranchactivistes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def studentbranchactivist_params
       params.require(:studentbranchactivist).permit(:csi_volunteer_name,:csi_volunteer_email,:csi_volunteer_id,
       :volunteers_added,:valid_till,:imno,:attachment,
       eventdetailsbystudentactivists_attributes: [:event_name,
       :event_place,:role_played,:_destroy])
    end
    
    def set_award
       @studentbranchactivist = Studentbranchactivist.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.studentbranchactivistaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
