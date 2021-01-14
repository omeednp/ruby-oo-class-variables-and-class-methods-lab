require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist 
    end

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.counter (attribute_array, count_of_attributes)
        attribute_array.each do |key|
            if count_of_attributes[key] == nil
                count_of_attributes[key] = 1
            else
                count_of_attributes[key] += 1
            end
        end
        count_of_attributes
    end

    def self.genre_count
        counter(@@genres, @@genre_count)
    end

    def self.artist_count
        counter(@@artists, @@artist_count)
    end

end
