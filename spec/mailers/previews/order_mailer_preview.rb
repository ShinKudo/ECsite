# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/registration_mail
  def registration_mail
    OrderMailerMailer.registration_mail
  end

end
