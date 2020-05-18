class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  accepts_nested_attributes_for :notes, :reject_if => proc { |attrs| attrs[:content].blank? }
  def artist_name
    self.artist.name if self.artist
  end

   def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
    self.save
  end

  def genre_name 
    self.genre.name if self.genre
  end 

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
    
  end

  def note_contents=(contents)
    binding.pry
  end

 

  
end
