class PagesController < ApplicationController
  def index
    @visible_books = Book.paginate(page: params[:page], per_page: 6).where(public: true)
  end
end
