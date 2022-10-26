# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  has_many(:director)

  # has_many(:director, { :class_name => "Movie" })

  # has_many(:director, { :foreign_key => "director_id", :class_name => "Movie" })

  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end

  has_many(:characters)

  # has_many(:characters, { :foreign_key => "movie_id" })

  # has_many(:characters, { :foreign_key => "movie_id", :class_name => "Character" })

  # def characters
  #   my_id = self.id
    
  #   the_many = Character.where({ :movie_id => my_id })

  #   return the_many
  # end

  belongs_to(:director, { :foreign_key => "director_id" })

  # belongs_to(:director, { :class_name => "Director", :foreign_key => "director_id", :required => true })

  #   belongs_to(:director, { :class_name => "Director", :foreign_key => "director_id" })

  # def director
  #   my_director_id = self.director_id

  #   matching_directors = Director.where({ :id => my_director_id })

  #   the_director = matching_directors.at(0)

  #   return the_director
  # end
end
