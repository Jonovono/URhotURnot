module GirlsHelper
  def display_girl_image(person)
    "https://s3.amazonaws.com/sadf/girls/girls/" + person.picture
  end
end
