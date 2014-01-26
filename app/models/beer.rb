class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    ratings.collect(&:score).sum.to_f/ratings.length if ratings.length > 0
  end

  end
