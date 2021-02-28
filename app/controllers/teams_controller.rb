class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :edit, :destroy]

  def index
    @teams = Teams.all
    # render component: "Teams", props: {teams: @teams, test:'test val'}
  end

  def show
    # @players = Player.get_all_players
    # render component: "AllPlayers", props:{players: @players}
    @team = Team.find{params[:id]}
    
    render component "Team", props:{team:  @team, players: @team.players}
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team =Team.new(team_params)

    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def update
    if @team.update(team_params)
      redirect_to @team
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name)
    end
end
