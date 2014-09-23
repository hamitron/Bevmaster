class VotesController < ApplicationController

def index
	@votes = Vote.all
end


def new
	@design = Design.find(params[:id])
	@vote = @design.votes.new
end

def create
	@beverages = Beverage.all
    @vote = Vote.new(vote_params)


    if @vote.save
      redirect_to beverages_path
    else
      render 'new'
    end
end


private
def vote_params
	params.require(:vote).permit(:state, :user_id, :beverage_id)
end



end
