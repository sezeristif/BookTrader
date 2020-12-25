class PagesController < ApplicationController
  def index
    @visible_books = Book.where(public: true).paginate(page: params[:page], per_page: 6)
  end
end
