module WinnersHelper
  def display_girl_image(person)
    "https://s3.amazonaws.com/sadf/girls/girls/" + person.picture
  end
  
  def display_guy_image(person)
    "https://s3.amazonaws.com/sadf/girls/guys/" + person.picture
  end
end
