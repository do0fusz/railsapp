class Contact < MailForm::Base
  attribute  :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :name, :subject, :message, validate: true 
  attributes :checker, captcha: true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact via de website: #{subject}",
      :to => "info@cyte.nl",
      :from => %(#{email})
    }
  end
end