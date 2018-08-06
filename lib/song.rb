require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable

  extend Paramable

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

  def self.all
    @@songs
  end
end
