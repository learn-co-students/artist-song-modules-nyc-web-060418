require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramble

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def initialize
    super
    @songs = []
  end
  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   @@artists.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
