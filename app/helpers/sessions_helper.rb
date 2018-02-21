module SessionsHelper

	def create_session(user)
		user.sessions.create()
	end

  def current_session
  	Session.find_by(token: request.headers['Authorization'])
  end

  

end