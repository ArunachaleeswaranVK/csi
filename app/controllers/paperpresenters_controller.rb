class PaperpresentersController < ApplicationController
    
    before_action :authenticate , only: [:new] 
    before_action :limit_award, only: [:new, :create]   
    before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
    
    
    
    def index
        @paperpresenters = Paperpresenter.all
        respond_to do |format|
            format.html
            format.csv { send_data @paperpresenters.to_csv, 
            filename: "paperpresenters-#{Date.today}.csv" }
        end
    end
    
    def show
        
    end    
    
    def new
        @paperpresenter = current_user.build_paperpresenter
        2.times { @paperpresenter.paperpresenterdetails.build}
    end
    
    def create
        @paperpresenter = current_user.build_paperpresenter(paperpresenter_params)
        
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
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def paperpresenter_params
       params.require(:paperpresenter).permit(:faculty_name,
       :faculty_email,:faculty_number,:faculty_csi_membership_no,:valid_till,:attachment,
       paperpresenterdetails_attributes: [:name_of_conference,
       :date_of_conference,:organised_by,:name_place_of_conference,:india_or_outside,:_destroy])
    end
    
    def set_award
       @paperpresenter = Paperpresenter.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.paperpresenteraward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
