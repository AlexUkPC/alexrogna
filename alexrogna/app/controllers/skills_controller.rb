class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show edit update destroy ]

  # GET /skills or /skills.json
  def _index
    
    @book = Book.all
    @linkedin = Linkedin.all
    @free_code_camp = FreeCodeCamp.all
    @hacker_rank = HackerRank.all

    book = params[:book]
    linkedin = params[:linkedin]
    free_code_camp = params[:free_code_camp]
    hacker_rank = params[:hacker_rank]

    if !book.nil?
      @skills = Skill.joins(:books).where(books: {id: book})
    elsif !linkedin.nil?
      @skills = Skill.joins(:linkedins).where(linkedins: {id: linkedin})
    elsif !free_code_camp.nil?
      @skills = Skill.joins(:free_code_camps).where(free_code_camps: {id: free_code_camp})
    elsif !hacker_rank.nil?
      @skills = Skill.joins(:hacker_ranks).where(hacker_ranks: {id: hacker_rank})
    else
      @skills = Skill.all
    end
  end

  # GET /skills/1 or /skills/1.json
  def show
  end

  # GET /skills/new
  def new
    @skill = Skill.new
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills or /skills.json
  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: "Skill was successfully created." }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills/1 or /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: "Skill was successfully updated." }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1 or /skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: "Skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:name, :logo, book_ids: [], books_attributes:[:title, :subtitle, :author, :publisher, :dop, :resources_link, :github_link, :_destroy], linkedin_ids: [], linkedins_attributes:[:badge_name, :_destroy], free_code_camp_ids: [], free_code_camps_attributes:[:cerificate_name, :url, :_destroy], hacker_rank_ids: [], hacker_ranks_attributes:[:cerificate_name, :is_badge, :url, :_destroy] )
    end
end
