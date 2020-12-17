class Helpers
    def self.current_user(sessions)
        @user = User.find_by_id(session[:user_id])
    end

end