class SiteController < ApplicationController

  def index

    @latest_article = Article.last

  end

  def about

  end

  def beneficiaries

  end

  def donors

  end

  def contact

  end

  def send_mail

    @name = params['name']
    @email = params['email']
    @phone = params['phone']
    @message = params['message']

    @sender_details = {:name => @name, :email => @email, :phone => @phone, :message => @message}

    ContactUs.contact_mail(@sender_details).deliver_now


  end

end
