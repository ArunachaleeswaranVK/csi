class PaperpresenterintconferencesController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @paper = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @papers = Paperpresenterintconference.all
    end
    
    def show
        
    end    
    
    def new
        @paper = Paperpresenterintconference.new
        2.times { @paper.paperpresentationdetails.build}
        
    end
    
    def create
        @paper = Paperpresenterintconference.new(paperpresenterintconference_params)
        
        if @paper.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @paper.update(paperpresenterintconference_params)
            redirect_to @paper
        else
            render "edit"
        end    
    end
    
    def destroy
        @paper.destroy
        redirect_to paperpresenterintconferencees_path
    end
    
    private
    
    def paperpresenterintconference_params
       params.require(:paperpresenterintconference).permit(:candidate_csi_membership_no,
       :valid_till,:imno,:has_student_branch,:faculty_name,:faculty_email,paperpresentationdetails_attributes: [:name_of_conference,
       :date_of_conference,:organised_by,:name_and_place_of_conference,:india_or_outside,:_destroy])
    end
    
    def set_award
       @paper = Paperpresenterintconference.find(params[:id])
    end
end
