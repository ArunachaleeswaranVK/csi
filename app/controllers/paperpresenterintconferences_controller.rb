class PaperpresenterintconferencesController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @paperpresenterintconference = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @paperpresenterintconferences = Paperpresenterintconference.all
    end
    
    def show
        
    end    
    
    def new
        @paperpresenterintconference = Paperpresenterintconference.new
    end
    
    def create
        @paperpresenterintconference = Paperpresenterintconference.new(paperpresenterintconference_params)
        
        if @paperpresenterintconference.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @paperpresenterintconference.update(paperpresenterintconference_params)
            redirect_to @paperpresenterintconference
        else
            render "edit"
        end    
    end
    
    def destroy
        @paperpresenterintconference.destroy
        redirect_to paperpresenterintconferencees_path
    end
    
    private
    
    def paperpresenterintconference_params
       params.require(:paperpresenterintconference).permit(:candidate_csi_membership_no,
       :valid_till,:imno,:has_student_branch,:faculty_name,:faculty_email)
    end
    
    def set_award
       @paperpresenterintconference = Paperpresenterintconference.find(params[:id])
    end
end
