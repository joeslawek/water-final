class UserController < ApplicationController

  def details

@user_num = params.fetch("specific")



    render({ :template => "users/show.html.erb" })


  end
end
