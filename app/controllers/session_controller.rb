
# app/controllers/sessions_controller.rb
class SessionController < ApplicationController

    def new
    end
  
    def create
      @user=User.find_by(email: params[:email])
      if @user
       
        login @user
        redirect_to root_path, notice: "Successfully logged in"
        
      else
        render :new,status: :unprocessable_entity
      end
    end
    

    def destroy
      logout current_user
      redirect_to root_path,notice:"you have been logged out"
    end
  end
  