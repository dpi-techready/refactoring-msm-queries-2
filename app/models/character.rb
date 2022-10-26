# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  
  belongs_to(:movie) # <-- short-hand for last method matching movie_id by context

  # belongs_to(:movie, { :class_name => "Movie" }) <-- def movie matching movie_id

  # belongs_to(:movie, { :foreign_key => "movie_id", :class_name => "Movie" }) <-- def movie with belongs_to

  # def movie
  #   key = self.movie_id

  #   matching_set = Movie.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end

  belongs_to(:actor)

  # belongs_to(:actor, { :class_name => "Actor" })

  # belongs_to(:actor, { :foreign_key => "actor_id", :class_name => "Actor" })

  # def actor
  #   key = self.actor_id

  #   matching_set = Actor.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end
