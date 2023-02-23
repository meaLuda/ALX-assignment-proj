class LiveOnlineGamesController < ApplicationController
  def save_game
  end

  def show_saved_games
    # show all saved games in db
    @games = Game.all

  end

  def make_game_note
    # redirect to make game note page
    
  end
end
