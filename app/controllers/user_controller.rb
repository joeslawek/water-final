class UserController < ApplicationController

  def details

@user_num = params.fetch("specific")

@u = User.where({ :id => @user_num }).at(0)





    render({ :template => "users/show.html.erb" })


  end
end
