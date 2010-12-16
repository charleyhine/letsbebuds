class DealMailer < ActionMailer::Base
  helper "spree/base"

  def deal_email(order, deal, resend=false)
    @order = order
    @deal = deal
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} #{deal.redemption_code}"
    mail(:to => order.email,
         :subject => subject)
  end
end
