require 'lib/Fraccionario'
require 'test/unit'

class TestFraccionario < Test::Unit::TestCase
   def test_constructor
      f1 = Fraccionario.new(1, 2)
      assert(f1.n == 1)
      assert(f1.d == 2)
   end
end
