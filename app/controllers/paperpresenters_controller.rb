class PaperpresentersController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        
        @paperpresenter = Institute.where("name like ?", "#{params[:name]}%").first
    end
    
    def index
        @paperpresenters = Paperpresenter.all
    end
    
    def show
        
    end    
    
    def new
        @paperpresenter = Paperpresenter.new
        2.times { @paperpresenter.paperpresenterdetails.build}
    end
    
    def create
        @paperpresenter = Paperpresenter.new(paperpresenter_params)
        
        if @paperpresenter.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @paperpresenter.update(paperpresenter_params)
            redirect_to @paperpresenter
        else
            render "edit"
        end    
    end
    
    def destroy
        @paperpresenter.destroy
        redirect_to paperpresenteres_path
    end
    
    private
    
    def paperpresenter_params
       params.require(:paperpresenter).permit(:faculty_name,
       :faculty_email,:imno,:faculty_number,:faculty_csi_membership_no,:valid_till,
       paperpresenterdetails_attributes: [:name_of_conference,
       :date_of_conference,:organised_by,:name_place_of_conference,:india_or_outside,:_destroy])
    end
    
    def set_award
       @paperpresenter = Paperpresenter.find(params[:id])
    end
end
