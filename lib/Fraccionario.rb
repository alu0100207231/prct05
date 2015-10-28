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
   
   # Máximo común divisor
   def gcd(u, v)
      u, v = u.abs, v.abs
      while v > 0
         u, v = v, u % v
      end
      u
   end
   
   # Mínimo común multiplo
   def mcm(a, b)
      aux=gcd(a,b)
      (a/aux)*b
   end
   
   def +(fraccion)
      dencom = mcm(@d, fraccion.d)
      Fraccionario.new((@n * (dencom/@d)) + (fraccion.n * (dencom/fraccion.d)), dencom)
   end
   
   def -(fraccion)
      dencom = mcm(@d, fraccion.d)
      Fraccionario.new((@n * (dencom/@d)) - (fraccion.n * (dencom/fraccion.d)), dencom)
   end
end
