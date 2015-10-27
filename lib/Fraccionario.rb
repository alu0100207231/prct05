class Fraccionario
   attr_reader :n, :d
   def initialize(n, d)
      @n, @d = n, d
   end
   
   def to_s
      "#{@n}/#{@d}"
   end
   
   def *(fraccion)
      Fraccionario.new(@n * fraccion.n, @d * fraccion.d)
   end
   
   def /(fraccion)
      Fraccionario.new(@n * fraccion.d, @d * fraccion.n)
   end
end
