class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    params[:page] ||=1
    @books = Book.paginate(page: params[:page], per_page: 6)
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
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
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :author, :price)
    end
    def search
    params[:page] ||=1
    @books = Book.where("name like ? or author like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
  end

  def sorting
    @books = Book.order("#{params[:sort_type]} #{params[:sort_order]}").paginate(page: params[:page], per_page: 2)
  end

  def pagination
    params[:page] ||=1
    params[:page] = params[:total_pages].to_i if params[:page].to_i == 0
    params[:page] = 1 if params[:page].to_i > params[:total_pages].to_i
    unless params[:search_str].blank?
      @books = Book.where("name like ? or author like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
    else
      @books = Book.paginate(page: params[:page], per_page: 2)
    end
  end
end
