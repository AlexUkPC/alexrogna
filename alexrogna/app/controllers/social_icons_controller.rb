class SocialIconsController < ApplicationController
  before_action :set_social_icon, only: %i[ show edit update destroy ]

  # GET /social_icons or /social_icons.json
  def index
    @social_icons = SocialIcon.all
  end

  # GET /social_icons/1 or /social_icons/1.json
  def show
  end

  # GET /social_icons/new
  def new
    @social_icon = SocialIcon.new
  end

  # GET /social_icons/1/edit
  def edit
  end

  # POST /social_icons or /social_icons.json
  def create
    @social_icon = SocialIcon.new(social_icon_params)

    respond_to do |format|
      if @social_icon.save
        format.html { redirect_to root_path, notice: "Social icon was successfully created." }
        format.json { render :show, status: :created, location: @social_icon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_icons/1 or /social_icons/1.json
  def update
    respond_to do |format|
      if @social_icon.update(social_icon_params)
        format.html { redirect_to root_path, notice: "Social icon was successfully updated." }
        format.json { render :show, status: :ok, location: @social_icon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_icons/1 or /social_icons/1.json
  def destroy
    @social_icon.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Social icon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_icon
      @social_icon = SocialIcon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_icon_params
      params.require(:social_icon).permit(:icon, :link, :order_id)
    end
end
