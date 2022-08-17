class UserController < ApplicationController

  def details

@user_num = params.fetch("specific")

@u = User.where({ :id => @user_num }).at(0)



matching_water_posts = WaterPost.all

    @list_of_water_posts = matching_water_posts.order({ :created_at => :desc })


    render({ :template => "users/show.html.erb" })


  end
end
