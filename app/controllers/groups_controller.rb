class GroupsController < ApplicationController
    def index
        @groups = Group.all
        @user_ip = request.location.ip
        @user_city = request.location.city
        @user_lat = request.location.latitude
        @user_lon = request.location.longitude
       # @user_lon = request.location.lon
    end

    def new
        @group = Group.new
    end

    def create
        @user_ip = request.remote_ip

        @group = Group.create(group_params)
        redirect_to groups_path
    end

    private def group_params
        params.require(:group).permit(:name,:category,:latitude,:longitude)
    end
end
