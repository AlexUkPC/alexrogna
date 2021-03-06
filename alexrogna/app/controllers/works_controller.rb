class WorksController < ApplicationController
  before_action :set_work, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /works or /works.json
  def index
    @teches = Tech.all
    tech = params[:tech]
    if !tech.nil?
      @works = Work.joins(:teches).where(teches: {id: tech})
    else
      @works = Work.all
    end
  end

  # GET /works/1 or /works/1.json
  def show
  end

  # GET /works/new
  def new
    @work = Work.new
    @works = Work.all.order('start_date DESC')
  end

  # GET /works/1/edit
  def edit
    @works = Work.all.order('start_date DESC')
  end

  # POST /works or /works.json
  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to root_path + "#work", notice: "Work was successfully created." }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1 or /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to root_path + "#work", notice: "Work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1 or /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to root_path + "#work", notice: "Work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_params
      params.require(:work).permit(:company, :position, :start_date, :end_date, :present, :key_responsibilities, :description, tech_ids: [], teches_attributes:[:name, :logo, :_destroy])
    end
end
