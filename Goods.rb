class Goods  
  attr :name,true
  attr :id,true
  attr :unit,true
  attr :price,true
  # attr:number,true
  #attr:total_price,true
  def initialize str
      @id,@name,@unit,@price=str.split(" ")
 
  end  
end



