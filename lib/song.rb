require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramble

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  # def initialize
  #   @@songs << self
  # end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   self.all.count
  # end

end
