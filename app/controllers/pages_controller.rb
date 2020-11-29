class PagesController < ApplicationController
  def index
    @visible_books = Book.all.where(public: true)
  end
end
