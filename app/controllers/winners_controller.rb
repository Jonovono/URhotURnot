class WinnersController < ApplicationController
  def index
    @title = "Winners"
    #@girls = Girl.order('score DESC').limit(100).all
    @girls = Girl.paginate(:page => params[:girls_page]).limit(5).order('score DESC')
    #@girls = Girl.paginate(:page => params[:girls_page]).where('girls.username IN(SELECT username FROM girls LIMIT 100)').order('score DESC').per_page(5)
    @boys = Guys.paginate(:page => params[:boys_page]).limit(5).order('score DESC')
    #@girls = Girl.paginate(:page => params[:girls_page])
    #@boys = Guys.paginate(:page => params[:boys_page]).order('score DESC')where('guys.username IN(SELECT username FROM guys LIMIT 100)').per_page(5)
  end

end
