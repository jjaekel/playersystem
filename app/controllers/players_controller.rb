#encoding: UTF-8
class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])
      redirect_to players_path, notice: "Spieler erfolgreich geändert."
    else
      render "edit"
    end
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to players_path, notice: "Spieler erfolgreich erstellt."
    else
      render "new"
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, notice: "Spieler erfolgreich gelöscht."
  end

end
