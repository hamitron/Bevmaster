class DesignsController < ApplicationController

def index
	@designs = Design.all
end

def show
	@design = Design.find(params[:id])	
end


def new
	@design = Design.new
end

def create

	@user = User.find(current_user.id)
	@design = @user.designs.new(design_params)
	if @design.save
		redirect_to designs_path
	else
		render 'new'
	end

end

def edit
end

def update
end

def destroy
end

private 
def design_find
	@design = Design.find(params[:id])	
end

def design_params
	params.require(:design).permit(:name, :format, :beverage_id, :user_id)
end


end
