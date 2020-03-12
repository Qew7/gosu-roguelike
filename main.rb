require 'gosu'
require 'pry'
require_relative 'src/sources'

WIDTH, HEIGHT = 800, 600

class Main < Gosu::Window
  attr_reader :objects
  def initialize
    super WIDTH, HEIGHT

    self.caption = 'Roguelike'
    @objects = []
    @player = Player.new(self, WIDTH / 2, (HEIGHT / 2) - 30)
    @objects << @player
  end

  def update
    objects.each { |obj| obj.update }
  end

  def draw
    objects.each { |obj| obj.draw }
  end
end

Main.new.show
