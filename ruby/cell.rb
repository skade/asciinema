class Cell

  attr_reader :text, :brush

  def initialize(text, brush)
    @text = text
    @brush = brush
  end

  def empty?
    text.blank? && brush.default?
  end

  def ==(other)
    text == other.text && brush == other.brush
  end

  def [](*args)
    self.class.new(text[*args], brush)
  end

  def as_json(*)
    [text, brush.as_json]
  end

  def size
    text.size
  end

end