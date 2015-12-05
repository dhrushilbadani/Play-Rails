class CommentsController < ApplicationController

    def create
        puts '!!!!!!!!!!comment' + params.to_s
        @game = Game.find(params[:game_id])
        @comment = @game.comments.create(commentparams)
        @comment.game_id = params[:game_id]
        @comment.username = current_user.name
        @comment.save!
        redirect_to '/games'
    end

    private
    def commentparams
        params.require(:comment).permit(:content)
    end
end
