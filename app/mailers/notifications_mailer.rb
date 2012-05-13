class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@vtr.com"
  default :to => "thiyagarajannv@gmail.com"

  def new_contact(contact)
    @contact = contact
    mail(:subject => "[vtr.com] #{contact.subject}")
  end
end
