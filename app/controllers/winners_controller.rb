class WinnersController < ApplicationController
  def index
    @title = "Winnders"
    #@girls = Girl.order('score DESC').limit(100).all
    @girls = Girl.paginate(:page => params[:girls_page]).limit(5).order('score DESC')
    @boys = Guys.paginate(:page => params[:boys_page]).limit(5).order('score DESC')
    #@girls = Girl.paginate(:page => params[:girls_page])
  end

end
