class Player < GameEntity
  SYMBOL = '@'

  def update
    return unless window.button_down?(Gosu::KB_RETURN)
    p 'Player updated'
  end

  def draw
    symbol.draw(50,50,0)
  end
end
