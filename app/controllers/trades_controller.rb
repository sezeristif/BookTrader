class TradesController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @books = current_user.books.map{ |book| [ book.title, book.id]}
  end

  def show
    @trade = Trade.find(params[:id])
    @book1 = @trade.book
    @book2 = Book.find(@trade[:offered_book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @trade = Trade.create!(user_id: current_user.id,
                           offered_book_id: params[:post][:given_id],
                           book_id: params[:book_id]) 
    if @trade.save
      flash[:notice] = 'Trade succesfully started.'
    redirect_to books_path
    end
  end

  def accept_trade
    trade = Trade.find(params[:id])
    @book1 = trade.book
    @book2 = Book.find(trade[:offered_book_id])
    @book1.update(traded_from_id: @book1.user.id)
    @book2.update(traded_from_id: @book2.user.id)

    @book1.update(user_id: @book2.user_id, traded_before: true)
    @book2.update(user_id: current_user.id, traded_before: true)

    trade.update(trade_status: 1)

    flash[:notice] = 'Traded books successfully'
    redirect_to user_path(current_user)
  end

  def reject_trade
    @trade = Trade.find(params[:id])
    @trade.update(trade_status: -1)
    flash[:alert] = 'Trade rejected.'
    redirect_to user_path(current_user)
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
    flash[:alert] = 'Your Trade Request Cancelled.'
    redirect_to user_path(current_user)
  end

end
