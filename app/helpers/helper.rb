def current_user
	User.find(session[:user]) if session[:user]
end

def signed_in?
	current_user
end