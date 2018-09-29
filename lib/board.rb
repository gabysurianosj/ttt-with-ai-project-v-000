class Board 
  attr_accessor :cells
  
  def initialize
    reset!
  end 
  
  def cells
    @cells 
  end 
  
  def reset!
    self.cells=(Array.new(9,""))
  end 
  
  def display 
    