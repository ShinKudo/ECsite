class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.registration_mail.subject
  #
  def registration_mail(order)
    @order = order
    mail to: @order.user.email, subject: '注文完了のお知らせ'
  end
end
