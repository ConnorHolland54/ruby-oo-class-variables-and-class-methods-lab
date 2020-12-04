
class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

   def self.artists
    return @@artists.uniq
   end

   def self.genres
    return @@genres.uniq
   end

   def self.genre_count
        hash = {}
        count = 0
        @@genres.uniq.sort.each do |genre|
            count += 1
            hash[genre] = count
        end
        return hash
        
    end

    def self.artist_count
        hash = {}
        count = 0
        @@artists.uniq.sort.each do |artist|
            count += 1
            hash[artist] = count
        end
        return hash
    end
    



end