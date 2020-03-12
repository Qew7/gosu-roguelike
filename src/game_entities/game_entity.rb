class GameEntity
  SYMBOL = 'Ø'

  attr_reader :x, :y, :window, :symbol

  def initialize(window=Main.new, x = 0, y = 0)
    @window = window
    @x = x
    @y = y
    @symbol = Gosu::Image.from_text(self.class::SYMBOL, HEIGHT / 32, width: WIDTH / 100, retro: true)
  end

  def update
    raise NotImplementedError
  end

  def draw
    raise NotImplementedError
  end

  def method_missing(method, *args, &block)
    false
  end
end
