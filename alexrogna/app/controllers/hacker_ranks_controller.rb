class HackerRanksController < ApplicationController
  before_action :set_hacker_rank, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /hacker_ranks or /hacker_ranks.json
  def index
    @hacker_ranks = HackerRank.all
  end

  # GET /hacker_ranks/1 or /hacker_ranks/1.json
  def show
  end

  # GET /hacker_ranks/new
  def new
    @hacker_rank = HackerRank.new
  end

  # GET /hacker_ranks/1/edit
  def edit
  end

  # POST /hacker_ranks or /hacker_ranks.json
  def create
    @hacker_rank = HackerRank.new(hacker_rank_params)

    respond_to do |format|
      if @hacker_rank.save
        format.html { redirect_to hacker_ranks_url, notice: "Hacker rank was successfully created." }
        format.json { render :show, status: :created, location: @hacker_rank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hacker_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hacker_ranks/1 or /hacker_ranks/1.json
  def update
    respond_to do |format|
      if @hacker_rank.update(hacker_rank_params)
        format.html { redirect_to hacker_ranks_url, notice: "Hacker rank was successfully updated." }
        format.json { render :show, status: :ok, location: @hacker_rank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hacker_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hacker_ranks/1 or /hacker_ranks/1.json
  def destroy
    @hacker_rank.destroy
    respond_to do |format|
      format.html { redirect_to hacker_ranks_url, notice: "Hacker rank was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hacker_rank
      @hacker_rank = HackerRank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hacker_rank_params
      params.require(:hacker_rank).permit(:cerificate_name, :is_badge, :url, :badgeorcertificate)
    end
end
