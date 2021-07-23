class ContactFormsController < ApplicationController
  before_action :set_contact_form, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [ :create]
  # GET /contact_forms or /contact_forms.json
  def index
    @contact_forms = ContactForm.all
  end

  # GET /contact_forms/1 or /contact_forms/1.json
  def show
  end

  # GET /contact_forms/new
  def new
    @contact_form = ContactForm.new
  end

  # GET /contact_forms/1/edit
  def edit
  end

  # POST /contact_forms or /contact_forms.json
  def create
    @contact_form = ContactForm.new(contact_form_params)
    @user = User.first
    
      respond_to do |format|
        
          if verify_recaptcha(model: @contact_form) && @contact_form.save && @contact_form.confirm_email==""
              format.html { redirect_to root_path, notice: "Thank you for your message." }
              format.js { flash[:notice] = @message = "Thank you for your message. I'll get back to you soon!" }
              NotifierMailer.email_me(@user, @contact_form).deliver_later
              
          else
              format.html { redirect_to root_path, notice: 'Unable to send message' }
              format.js { render :fail }
          end
        
      end
  end

  # PATCH/PUT /contact_forms/1 or /contact_forms/1.json
  def update
    respond_to do |format|
      if verify_recaptcha(model: @contact_form) && @contact_form.update(contact_form_params) && @contact_form.confirm_email==""
        format.html { redirect_to @contact_form, notice: "Contact form was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.js { render :fail }
      end
    end
  end

  # DELETE /contact_forms/1 or /contact_forms/1.json
  def destroy
    @contact_form.destroy
    respond_to do |format|
      format.html { redirect_to contact_forms_url, notice: "Contact form was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_form
      @contact_form = ContactForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_form_params
      params.require(:contact_form).permit(:name, :email, :subject, :message, :confirm_email)
    end
end
