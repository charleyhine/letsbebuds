class OrderMailer < ActionMailer::Base
  helper "spree/base"

  def confirm_email(order, deal, resend)
    @order = order
    @deal = deal
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} #{deal.redemption_code}"
    mail(:to => order.email,
         :subject => subject)
  end

  def cancel_email(order, resend=false)
    @order = order
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} Cancellation of Order ##{order.number}"
    mail(:to => order.email,
         :subject => subject)
  end
end
