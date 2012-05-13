class VictoriesController < ApplicationController

  before_filter :should_be_user, :only => [:new, :create]

  def new
    @victory = Victory.new
  end

  def create
  unless params[:comment].present?
    @victory = Victory.new(params[:victory])
    @victory.user_id = current_user.id
    @victory.tag_list ="awesome, slick, hefty"
    if @victory.save
      redirect_to(root_path, :notice => "Victory was saved successfully.")
    end
  else
    @user_who_commented = current_user
    @victory = Victory.find(params[:comment][:victory_id])
    @comment = Comment.build_from( @victory, @user_who_commented.id, params[:comment] )
    @comment.save
    redirect_to(request.referrer, :notice => "Comment was saved successfully.")
    end
   end
  def update

  end

  def tag_cloud
    @tags = Victory.tag_counts_on(:tags)
  end

  def show
    @victory = Victory.find(params[:id])
    @tags = Victory.tag_counts_on(:tags)
    @comment = @victory.comments.build
    @comments = @victory.root_comments
  end
end
