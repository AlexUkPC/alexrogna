class LinkedinsController < ApplicationController
  before_action :set_linkedin, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /linkedins or /linkedins.json
  def index
    @linkedins = Linkedin.all
  end

  # GET /linkedins/1 or /linkedins/1.json
  def show
  end

  # GET /linkedins/new
  def new
    @linkedin = Linkedin.new
  end

  # GET /linkedins/1/edit
  def edit
  end

  # POST /linkedins or /linkedins.json
  def create
    @linkedin = Linkedin.new(linkedin_params)

    respond_to do |format|
      if @linkedin.save
        format.html { redirect_to @linkedin, notice: "Linkedin was successfully created." }
        format.json { render :show, status: :created, location: @linkedin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @linkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linkedins/1 or /linkedins/1.json
  def update
    respond_to do |format|
      if @linkedin.update(linkedin_params)
        format.html { redirect_to @linkedin, notice: "Linkedin was successfully updated." }
        format.json { render :show, status: :ok, location: @linkedin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkedins/1 or /linkedins/1.json
  def destroy
    @linkedin.destroy
    respond_to do |format|
      format.html { redirect_to linkedins_url, notice: "Linkedin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linkedin
      @linkedin = Linkedin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linkedin_params
      params.require(:linkedin).permit(:badge_name, :badge)
    end
end
