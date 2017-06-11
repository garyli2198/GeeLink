class GroupsController < ApplicationController
    def index
        @groups = Group.all
        @user_lat = request.location.latitude
        @user_lon = request.location.longitude
    end

    def new
        @group = Group.new
    end

    def create
        @group_lat = 1
        @group_lon = 2

        @group = Group.create(group_params)
        @group.update_attributes({:latitude => @group_lat,:longitude => @group_lon})
        redirect_to groups_path
    end


    private def group_params
        params.require(:group).permit(:name,:category)
    end
end
