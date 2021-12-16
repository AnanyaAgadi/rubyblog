class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    # @comments = Comments.paginate(page: params[:page], per_page: 4)
    # @comments = @products.comment.paginate(page: params[:page], per_page: 4)
    @comment.user = current_user
      
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @post, notice: 'Review was created successfully.'}
        format.json {render :show, status: :created,location: @post }
      else
        format.html {redirect_to @post, alert: 'Review was not saved successfully.'}
        format.json {render json: @comments.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to product_path(@product)
  end

  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post
    @comment.destroy
    redirect_to post
  end

  private 

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
end


