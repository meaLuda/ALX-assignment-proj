class CommentsController < ApplicationController
    def new
        @game = Game.find(params[:game_id])
        @comment = @game.comments.build
    end

    def create
        @game = Game.find(params[:game_id])
        @comment = @game.comments.build(comment_params)
        if @comment.save
            redirect_to game_path(@game)
        else
            render :new
    end

    private

    def comment_params
        params.require(:comment).permit(:comment_is)
    end
    
end
