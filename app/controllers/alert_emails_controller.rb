class AlertEmailsController < ApplicationController
  # GET /alert_emails
  # GET /alert_emails.xml
  def index
    @alert_emails = AlertEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alert_emails }
    end
  end

  # GET /alert_emails/1
  # GET /alert_emails/1.xml
  def show
    @alert_email = AlertEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alert_email }
    end
  end

  # GET /alert_emails/new
  # GET /alert_emails/new.xml
  def new
    @alert_email = AlertEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alert_email }
    end
  end

  # GET /alert_emails/1/edit
  def edit
    @alert_email = AlertEmail.find(params[:id])
  end

  # POST /alert_emails
  # POST /alert_emails.xml
  def create
    @alert_email = AlertEmail.new(params[:alert_email])

    respond_to do |format|
      if @alert_email.save
        format.html { redirect_to(:root, :notice => 'You signed up successfully.') }
        #format.xml  { render :xml => @alert_email, :status => :created, :location => @alert_email }
      else
        format.html { redirect_to(:root, :notice => 'Please use a valid email address.') }
        #format.xml  { render :xml => @alert_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alert_emails/1
  # PUT /alert_emails/1.xml
  def update
    @alert_email = AlertEmail.find(params[:id])

    respond_to do |format|
      if @alert_email.update_attributes(params[:alert_email])
        format.html { redirect_to(@alert_email, :notice => 'Alert email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alert_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_emails/1
  # DELETE /alert_emails/1.xml
  def destroy
    @alert_email = AlertEmail.find(params[:id])
    @alert_email.destroy

    respond_to do |format|
      format.html { redirect_to(alert_emails_url) }
      format.xml  { head :ok }
    end
  end
end
