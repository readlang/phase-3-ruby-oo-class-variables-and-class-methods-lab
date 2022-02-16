require "pry"
class Song


    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each do |item|
            if @@genre_count[item]
                @@genre_count[item] += 1
            else
                @@genre_count[item] = 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        artist_hash = {}

        @@artists.each do |x|
            if artist_hash[x]
                artist_hash[x] += 1
            else
                artist_hash[x] = 1
            end
        end
        artist_hash
    end
    

end

binding.pry
