class WaterPostsController < ApplicationController
  def index
    matching_water_posts = WaterPost.all

    @list_of_water_posts = matching_water_posts.order({ :date => :desc })

    render({ :template => "water_posts/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_water_posts = WaterPost.where({ :id => the_id })

    @the_water_post = matching_water_posts.at(0)

    render({ :template => "water_posts/show.html.erb" })
  end

  def create
    the_water_post = WaterPost.new
    the_water_post.date = params.fetch("query_date")
    the_water_post.ounce_count = params.fetch("query_ounce_count")
    the_water_post.caption = params.fetch("query_caption")
    the_water_post.post_author_id = session[:user_id]
    

    if the_water_post.valid?
      the_water_post.save
      redirect_to("/water_posts", { :notice => "Water post created successfully." })
    else
      redirect_to("/water_posts", { :alert => the_water_post.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_water_post = WaterPost.where({ :id => the_id }).at(0)

    the_water_post.date = params.fetch("query_date")
    the_water_post.ounce_count = params.fetch("query_ounce_count")
    the_water_post.caption = params.fetch("query_caption")
    #the_water_post.post_author_id = params.fetch("query_post_author_id")
    

    if the_water_post.valid?
      the_water_post.save
      redirect_to("/water_posts/#{the_water_post.id}", { :notice => "Water post updated successfully."} )
    else
      redirect_to("/water_posts/#{the_water_post.id}", { :alert => the_water_post.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_water_post = WaterPost.where({ :id => the_id }).at(0)

    the_water_post.destroy

    redirect_to("/water_posts", { :notice => "Water post deleted successfully."} )
  end
end
