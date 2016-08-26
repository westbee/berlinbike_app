class UserMailer < ApplicationMailer
  
  default from: "mr.westbee@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'mr.westbee@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  @appname = "Bike Berlin"
  	mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end

end
