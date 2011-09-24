class GirlsController < ApplicationController
  respond_to :html, :js
  def index
    @title = "Women"
    @left, @right = getGirls
  end
  
  def update
     @win = Girl.find(params[:win])
     @lose = Girl.find(params[:lose])
     
     newScore(@win, @lose)
     
     respond_to do |format|
       format.html {redirect_to root_path}
      format.js
     end
  end
  
  def show
    @girl = Girl.find(params[:id])
  end
  
end
