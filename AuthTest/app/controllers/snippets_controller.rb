class SnippetsController < ApplicationController

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
       PygmentsWorker.perform_in(1.hour, @snippet.id)
      redirect_to @snippet
    else
      render :new
    end
  end

  def snippet_params
    params.require(:snippet).permit(:plain_code, :highlighted_code, :language)
  end
end
