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

  def order_placed(user, product)
    @user = user
    @product = product
    mail(:from => 'mr.westbee@gmail.com',
        :to => user.email,
        :subject => " Thank you for your order. Enjoy your bike!")
  end

end
