class GroupMailer < ActionMailer::Base
  default :from => "tejasrailstest@gmail.com"

  def friend_send(email)
  	mail(:to => email, :subject => "Friend from GroupGo")
	end
end
