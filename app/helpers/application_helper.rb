module ApplicationHelper

  # Use within views to set the page's HTML title
  def title(text)
    content_for(:title) { text }
  end

  # Use within views to set the page's HTML meta description
  def description(text)
    content_for(:description) { text }
  end

  # Displays all flash messages in appropriately named divs for easy styling
  def flash_messages
    messages = flash.keys.collect { |key| flash_message(key, flash[key]) }
    content_tag(:div, messages.to_s.html_safe, :id => "flash-messages")
  end

  # Format a single flash message
  def flash_message(type, message)
    content_tag(:div, :class => "flash-message #{type.to_s}") do
      content_tag :p, message
    end
  end
  
  def getGirls
    Girl.order("RANDOM()").limit(2)
  end
  
  def getBoys
    Guys.order("RANDOM()").limit(2)
  end
  
  def newScore(winner, loser)
    
    getExpectedScores(winner, loser)
    puts "Winner score and expected #{winner.score} #{winner.expected}"
    puts "Loser score and expected #{loser.score} #{loser.expected}"
    
    puts "After new rating"

    getNewRating(winner, loser)
    puts "Winner score and expected #{winner.score} #{winner.expected}"
    puts "Loser score and expected #{loser.score} #{loser.expected}"
      
  end
  
  def getExpectedScores(player1, player2)
    if (player1.score > player2.score)
      higher_rating_b = player1
      lower_rating_a = player2
    else
      higher_rating_b = player2
      lower_rating_a = player1
    end

    d = higher_rating_b.score - lower_rating_a.score
    a = 205 - (lower_rating_a.score.fdiv(20))

    lower_rating_a.expected = 1.fdiv(Math::E**(d.fdiv(a)) +1)
    higher_rating_b.expected = 1 - lower_rating_a.expected
  end
  
  def getK(player)
    rate = player.score
    122 - 6 * (rate.fdiv(100)) + (((rate.fdiv(100)**2)/15))
  end

  def getNewRating(winner, loser)
    winner_score = winner.score + getK(winner) * (1 - winner.expected)
    loser_score = loser.score + getK(loser) * (0-loser.expected)
    winner.update_attributes(:score => winner_score)
    loser.update_attributes(:score => loser_score)
  end
  
  # def updateGirlsScores(win, lose)
  #   puts win
  #   puts lose
  #   winExpected = getExpectedChance(win.score, lose.score)
  #   loseExpected = getExpectedChance(lose.score, win.score)
  #   
  #   diff = (win.score - lose.score).abs
  #   
  #   win.update_attributes(:score => win.score + 1)
  #   win.update_attributes(:wins => win.wins + 1)
  #   
  #   if (diff >= 40 && (winExpected < 0.5 || loseExpected >= 0.5))
  #     win.update_attributes(:score => adjustRate(win.score, winExpected, 1))
  #     lose.update_attributes(:score => adjustRate(lose.score, loseExpected, 0))
  #   end
  # end
  # 
  # def getExpectedChance(score1, score2)
  #  (1.fdiv((1+(10**((score2-score1).fdiv(400))))))
  # end
  # 
  # def adjustRate(ra, ea, sa)
  #   if (ra < 500)
  #     k = 32
  #   elsif (ra < 1000)
  #     k = 24
  #   else
  #     k = 16
  #   end
  # 
  #  return ra + (k*(sa - ea))
  # end

end
