class Album
	attr_reader :name, :songs

	def initialize name
		@name = name
		@songs = []
	end	

	def add_song song
		@songs << song
	end
end

class Song
	attr_reader :name, :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

album = Album.new 'My favourite songs'

song1 = Song.new 'Let it be', 4
song2 = Song.new 'We are living in America!', 5
song3 = Song.new 'Wind of change', 6

album.add_song song1
album.add_song song2
album.add_song song3

puts album.songs[1].name
