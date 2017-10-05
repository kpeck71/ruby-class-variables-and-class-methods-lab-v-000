require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    #binding.pry
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.artists
    #binding.pry
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    binding.pry
    # @@genres => ["rap", "rap", "pop"]
    # genres ==> ["rap", "pop"]
    genre_count = {}

    @@genres.each_with_object do |genre|
      number = 0
      if @@genres.include?(genre)
        number += 1
      else
        genre_count[genre] << genre
      end
      genre_count[genre]=number
    end
  end

  def artist_count
  end


end
