class ContactUs < ApplicationMailer
  def contact_mail(user)
    @delivery_address = 'kenedyakenaivan@gmail.com'
    @from_name = 'SSEF Site'
    @email_with_name = %("#{@from_name}" <#{@delivery_address}>)
    @user = user
    mail(to:@email_with_name, subject:'Mail from ssef site')
  end
end