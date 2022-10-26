# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  
  has_many(:filmography, { :class_name => "Movie" }) # <-- when defining a different name from the tables as filmography a class needs to be define as well to give context to the target

  # has_many(:filmography, { :foreign_key => "director_id", :class_name => "Movie" })
  
  # def filmography
  #   key = self.id

  #   the_many = Movie.where({ :director_id => key })

  #   return the_many
  # end

  # Define these methods using belongs_to and has_many:

  # Director -> Movie
  # Director#filmography DONE
  # Movie#director       DONE

  # Movie -> Character
  # Movie#characters     DONE
  # Character#movie      DONE

  # Actor -> Character
  # Actor#characters     DONE
  # Character#actor      DONE 
  
end
