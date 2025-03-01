class Song
    
    @@count = 0
    @@artists =[]
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre = genre
        @@count += 1
        @@artists << artist 
        @@genres << genre
        @@artist_count[artist] ||= 0
        @@genre_count[genre] ||= 0
    
        if @@genres.include?(genre)
            @@genre_count[genre] += 1
        end

        if @@artists.include?(artist)
            @@artist_count[artist] += 1
        end
    
    end

    def  self.count
        @@count 
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count 
    end



end