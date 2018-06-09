require 'pry'
require_relative '../lib/concerns/memorable'
r
class Song

  extend Memorable
  extend Memorable::Findable
  include Memorable::Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
