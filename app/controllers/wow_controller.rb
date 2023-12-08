class WowController < ApplicationController
 
    before_action :authenticate_user!
  #byebug
    def index
      if current_user.user_type == 'developer'
        redirect_to bugzs_path
      elsif current_user.user_type == 'manager'
        redirect_to projects_path
      elsif current_user.user_type == 'qa'
        redirect_to projects_path
      else
        # Default logic or redirect
      end
    end

end
