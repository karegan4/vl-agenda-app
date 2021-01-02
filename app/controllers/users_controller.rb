class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        
        if (user = User.create(user_params))
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render 'new'
        end
    end

    def show
            @user = User.find_by(id: params[:id])
            @courses = current_user.courses
            @assignments = current_user.assignments
    end

    #display all registered users
    def all
        @users = User.all
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end