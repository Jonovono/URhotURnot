class GuysController < ApplicationController
  def index
    @title = "Men"
    @left, @right = getBoys
  end

  def update
    @win = Guys.find(params[:win])
    @lose = Guys.find(params[:lose])
    
    newScore(@win, @lose)
    
    respond_to do |format|
      format.html {redirect_to root_path}
     format.js
    end
  end

  def show
    @guy = Guys.find(params[:id])
  end

end
