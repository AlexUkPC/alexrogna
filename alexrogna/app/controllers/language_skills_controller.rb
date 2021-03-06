class LanguageSkillsController < ApplicationController
  before_action :set_language_skill, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /language_skills or /language_skills.json
  def index
    @language_skills = LanguageSkill.all
  end

  # GET /language_skills/1 or /language_skills/1.json
  def show
  end

  # GET /language_skills/new
  def new
    @language_skill = LanguageSkill.new
    @language_skills = LanguageSkill.all.order('created_at ASC')
  end

  # GET /language_skills/1/edit
  def edit
    @language_skills = LanguageSkill.all.order('created_at ASC')
  end

  # POST /language_skills or /language_skills.json
  def create
    @language_skill = LanguageSkill.new(language_skill_params)

    respond_to do |format|
      if @language_skill.save
        format.html { redirect_to root_path + "#language_skills", notice: "Language skill was successfully created." }
        format.json { render :show, status: :created, location: @language_skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @language_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_skills/1 or /language_skills/1.json
  def update
    respond_to do |format|
      if @language_skill.update(language_skill_params)
        format.html { redirect_to root_path + "#language_skills", notice: "Language skill was successfully updated." }
        format.json { render :show, status: :ok, location: @language_skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @language_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_skills/1 or /language_skills/1.json
  def destroy
    @language_skill.destroy
    respond_to do |format|
      format.html { redirect_to root_path + "#language_skills", notice: "Language skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_skill
      @language_skill = LanguageSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def language_skill_params
      params.require(:language_skill).permit(:language, :certificate_name, :certificate_url, :is_native, :procent)
    end
end
