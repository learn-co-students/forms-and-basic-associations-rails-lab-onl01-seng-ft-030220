class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(name)
    self.genre = Genre.find(name: name)
  end

  def genre_name
    self.genre ? self.genre : nil
  end

end
