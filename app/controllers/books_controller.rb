class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :require_same_user, only: %i[edit destroy]
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    @visible_books = @books.where(public: true)
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @comment = Comment.new
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit; end

  # POST /books
  # POST /books.json
  def create
    @book = current_user.books.build(book_params)
    if @book.save
      flash[:notice] = "Book Created Succesfully"
      redirect_to @book
    else
      redirect_to new_book_path
      flash[:alert] = "Something wrong with your book parameters."
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def book_params
    params.require(:book).permit(:title, :author, :pages, :public, :user_id, :trade_able)
  end

  def require_same_user
    redirect_to root_path if current_user != @book.user
  end
end
