class GamesController < ApplicationController
    before_filter :authenticate_user!
    attr_reader :hidden

    def join
        @g = Game.find(params[:id])
        puts '!!!!CURRENT USER ID!!!!!' + current_user.id.to_s
        if current_user.id != @g.user_id
            @g.upvote_by current_user
        end
        @g.save!
        redirect_to "/games"
    end

    def index
        if params[:search].present?
            @games = Game.near(params[:search])
        else
            @games = Game.all
        end
    end

    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.create(game_params)
        @game.users = 1
        @game.user_id = current_user.id
        if @game.save
            redirect_to "/users/" + @game.user_id.to_s
        else
            flash.now[:error] = @game.errors.full_messages.to_sentence
            render "new"
        end
    end

    private

    def game_params
        params.require(:game).permit(:name, :location)
    end

end