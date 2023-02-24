

# save liked game
def Like
    # load params from request into variables
    team_rank = params[:team_rank]
    team_name = params[:team_name]
    games_played = params[:games_played]
    wins = params[:wins]
    losses = params[:losses]
    ties = params[:ties]    

    # Check if team with the same name already exists
    if TeamStats.exists?(name: team_name)
        puts "Team #{team_name} already exists"
        return
    end
    
    # Create new team stats from params--variables
    team_stats = TeamStats.new(rank: team_rank, name: team_name, games_played: games_played, wins: wins, losses: losses, ties: ties)
    puts "-------- team_stats saved --------"
    team_stats.save
    
end