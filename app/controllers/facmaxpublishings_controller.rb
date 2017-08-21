class FacmaxpublishingsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @facmaxpublishing = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @facmaxpublishings = Facmaxpublishing.all
    end
    
    def show
        
    end    
    
    def new
        @facmaxpublishing = Facmaxpublishing.new
    end
    
    def create
        @facmaxpublishing = Facmaxpublishing.new(facmaxpublishing_params)
        
        if @facmaxpublishing.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @facmaxpublishing.update(facmaxpublishing_params)
            redirect_to @facmaxpublishing
        else
            render "edit"
        end    
    end
    
    def destroy
        @facmaxpublishing.destroy
        redirect_to facmaxpublishinges_path
    end
    
    private
    
    def facmaxpublishing_params
       params.require(:facmaxpublishing).permit(:candidate_csi_membership_no,
       :valid_till,:imno,:has_student_branch,:faculty_name,:faculty_email)
    end
    
    def set_award
       @facmaxpublishing = Facmaxpublishing.find(params[:id])
    end
end
