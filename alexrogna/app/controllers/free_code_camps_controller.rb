class FreeCodeCampsController < ApplicationController
  before_action :set_free_code_camp, only: %i[ show edit update destroy ]

  # GET /free_code_camps or /free_code_camps.json
  def index
    @free_code_camps = FreeCodeCamp.all
  end

  # GET /free_code_camps/1 or /free_code_camps/1.json
  def show
  end

  # GET /free_code_camps/new
  def new
    @free_code_camp = FreeCodeCamp.new
  end

  # GET /free_code_camps/1/edit
  def edit
  end

  # POST /free_code_camps or /free_code_camps.json
  def create
    @free_code_camp = FreeCodeCamp.new(free_code_camp_params)

    respond_to do |format|
      if @free_code_camp.save
        format.html { redirect_to @free_code_camp, notice: "Free code camp was successfully created." }
        format.json { render :show, status: :created, location: @free_code_camp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @free_code_camp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_code_camps/1 or /free_code_camps/1.json
  def update
    respond_to do |format|
      if @free_code_camp.update(free_code_camp_params)
        format.html { redirect_to @free_code_camp, notice: "Free code camp was successfully updated." }
        format.json { render :show, status: :ok, location: @free_code_camp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @free_code_camp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_code_camps/1 or /free_code_camps/1.json
  def destroy
    @free_code_camp.destroy
    respond_to do |format|
      format.html { redirect_to free_code_camps_url, notice: "Free code camp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_code_camp
      @free_code_camp = FreeCodeCamp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def free_code_camp_params
      params.require(:free_code_camp).permit(:cerificate_name, :url)
    end
end
