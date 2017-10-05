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
    #binding.pry
    genre_count = {}
    # @@genres => ["rap", "rap", "pop"]
    # genres ==> ["rap", "pop"]
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def artist_count
    artist_count = {}
    # @@genres => ["rap", "rap", "pop"]
    # genres ==> ["rap", "pop"]
    @@artists.each do |artist|
      if artist_count[genre]
        artist_count[genre] += 1
      else
        artist_count[genre] = 1
      end
    end
    artist_count
  end
  end


end
