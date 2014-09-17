class VotesController < ApplicationController

def index
	@votes = Vote.all
end


def show
end

def create
	@user = User.find(current_user.id)
	@vote = @user.votes.new(vote_params)
	if @vote.save
		redirect_to designs_path
	end

end


private
def vote_params
	params.require(:vote).permit(:state, :design_id, :user_id)
end



end
