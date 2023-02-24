class LikedTeamsController < ApplicationController
  before_action :set_liked_team, only: %i[ show edit update destroy ]

  # GET /liked_teams or /liked_teams.json
  def index
    @liked_teams = LikedTeam.all
  end

  # GET /liked_teams/1 or /liked_teams/1.json
  def show
  end

  # GET /liked_teams/new
  def new
    @liked_team = LikedTeam.new
  end

  # GET /liked_teams/1/edit
  def edit
  end

  # POST /liked_teams or /liked_teams.json
  def create
    @liked_team = LikedTeam.new(liked_team_params)

    respond_to do |format|
      if @liked_team.save
        format.html { redirect_to liked_team_url(@liked_team), notice: "Liked team was successfully created." }
        format.json { render :show, status: :created, location: @liked_team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @liked_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liked_teams/1 or /liked_teams/1.json
  def update
    respond_to do |format|
      if @liked_team.update(liked_team_params)
        format.html { redirect_to liked_team_url(@liked_team), notice: "Liked team was successfully updated." }
        format.json { render :show, status: :ok, location: @liked_team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @liked_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liked_teams/1 or /liked_teams/1.json
  def destroy
    @liked_team.destroy

    respond_to do |format|
      format.html { redirect_to liked_teams_url, notice: "Liked team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_team
      @liked_team = LikedTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def liked_team_params
      params.fetch(:liked_team, {})
    end
end
