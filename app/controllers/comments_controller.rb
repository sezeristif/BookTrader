class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: %i[approve reject]
  def index
    @books = current_user.books
  end

  def approve
    @comment.update!(status: :approved)
    flash[:notice] = "Comment approved successfully."
    redirect_to user_comments_path
  end

  def reject
    @comment.update!(status: :rejected)
    redirect_to user_comments_path(current_user)
    flash[:alert] = "Comment Rejected"
  end

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(title: comment_params[:title],
                                     content: comment_params[:content],
                                     book_id: params[:book_id],
                                     user_id: current_user.id)

    respond_to do |format|
      format.js
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content, :book_id)
  end
end
