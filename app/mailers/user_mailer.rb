class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @book = params[:user]
    mail(to: @book.content, subject: 'Welcome to My book')
  end
end
