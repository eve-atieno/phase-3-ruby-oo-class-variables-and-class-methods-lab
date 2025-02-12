class Song
    attr_accessor :title, :artist, :genre,:name
   @name
   @@count=0
   @@artists=[]
   @@genres =[]
   @@genre_count={}
   @@artist_count={}

   def initialize(name, artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists<<artist
    @@genres<<genre
    @@genre_count[genre] = @@genres.count(genre)
    @@artist_count[artist] = @@artists.count(artist)
   end

   def self.count
    @@count
   end

   def self.artists
    @@artists.uniq
   end

   def  self.genre_count
    @@genre_count
   end

   def self.genres
    @@genres.uniq
   end

   def self.artist_count
    @@artist_count
   end
end