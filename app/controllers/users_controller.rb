class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @visible_books = @books.where(public: true)
    @ids = @books.where(user_id: current_user.id)
    @pending_comments = Comment.all.where(book_id: @ids, status: "pending")
  end

  def index
    @users = User.all
  end

  def trade_requests
    @books = current_user.books
    @outgoing_trades = current_user.trades
  end
end
