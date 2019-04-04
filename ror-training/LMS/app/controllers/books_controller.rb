class BooksController < ApplicationController

  def index
    params[:page] ||=1
  	@books = Book.paginate(page: params[:page], per_page: 2)
  end

  def new

  	
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
    if @book.update(book_params)
       redirect_to books_path
    else
    	render :edit
    end
  end

  def destroy
	  @book = Book.find(params[:id])
	  @book.destroy
	  redirect_to books_path
	end

  def search
    params[:page] ||=1
    @books = Book.where("name like ? or subject like ? or author like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
  end

  def sorting
    @books = Book.order("#{params[:sort_type]} #{params[:sort_order]}").paginate(page: params[:page], per_page: 2)
  end

  def pagination
    params[:page] ||=1
    params[:page] = params[:total_pages].to_i if params[:page].to_i == 0
    params[:page] = 1 if params[:page].to_i > params[:total_pages].to_i
    unless params[:search_str].blank?
      @books = Book.where("name like ? or subject like ? or author like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
    else
      @books = Book.paginate(page: params[:page], per_page: 2)
    end
  end

  def book_params
  	params.require(:book).permit(:name,:subject,:author)
  end
end
