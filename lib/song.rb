require 'pry'


class Song


    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << @artist
        @@genres << @genre
        @@count+=1
        # binding.pry
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.map do |gen|
            if genre_hash[gen]
                genre_hash[gen] +=1
            else
                genre_hash[gen] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.map do |art|
            if artist_hash[art]
                artist_hash[art] +=1
            else
                artist_hash[art] = 1
            end
        end
        artist_hash
    end
    
end
