class PersonalSkillsController < ApplicationController
  before_action :set_personal_skill, only: %i[ show edit update destroy ]

  # GET /personal_skills or /personal_skills.json
  def index
    @personal_skills = PersonalSkill.all
  end

  # GET /personal_skills/1 or /personal_skills/1.json
  def show
  end

  # GET /personal_skills/new
  def new
    @personal_skill = PersonalSkill.new
    @personal_skills = PersonalSkill.all.order("order_id ASC")
  end

  # GET /personal_skills/1/edit
  def edit
    @personal_skills = PersonalSkill.all.order("order_id ASC")
  end

  # POST /personal_skills or /personal_skills.json
  def create
    @personal_skill = PersonalSkill.new(personal_skill_params)

    respond_to do |format|
      if @personal_skill.save
        format.html { redirect_to root_path + "#personal_skills", notice: "Personal skill was successfully created." }
        format.json { render :show, status: :created, location: @personal_skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_skills/1 or /personal_skills/1.json
  def update
    respond_to do |format|
      if @personal_skill.update(personal_skill_params)
        format.html { redirect_to root_path + "#personal_skills", notice: "Personal skill was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_skills/1 or /personal_skills/1.json
  def destroy
    @personal_skill.destroy
    respond_to do |format|
      format.html { redirect_to personal_skills_url, notice: "Personal skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_skill
      @personal_skill = PersonalSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_skill_params
      params.require(:personal_skill).permit(:skill, :icon, :description, :order_id)
    end
end
