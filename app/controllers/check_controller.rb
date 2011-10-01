class CheckController < ApplicationController
  def index
    #puts params[@girl]
    @title = "Check if you are on!"
  end
  
  def test
    @fb =  params[:facebook]
    puts "Test initial: #{@fb}"
    
   @fb.sub!("http://", "")
   @fb.sub!("www.", "")
   @fb.sub!("facebook.com/profile.php?id=", "")
   @fb.sub!("facebook.com/", "")
    #@good = @id.chomp('http://www.facebook.com/')
    
   @girl = Girl.find_by_username(@fb)
   if @girl == nil
     @boy = Guys.find_by_username(@fb)
   end
   #puts "ASDASD"
   #puts @fb
   @arr = []
   
   @name =  URI.escape(@fb, ".")
   @arr << @name
    render 'results'
    #redirect_to check_path(@girl)
  end
  
  def remove
    puts params[:id]
    #Removal.create(:fb_id => params[:id])
    flash[:notice] = "You will be removed! and missed :("
    redirect_to check_path
  end
  
  def addition
    puts params[:id]
    #puts URI.decode(params[:id])
    #Addtion.create(:fb_id => params[:id])
    flash[:notice] = "You will be added!"
    redirect_to check_path
  end
  


end
