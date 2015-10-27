require 'lib/Fraccionario'
require 'test/unit'

class TestFraccionario < Test::Unit::TestCase
   def setup
      @f1 = Fraccionario.new(1, 2)
      @f2 = Fraccionario.new(3, 4)
   end
   
   def test_simple
      
      # Test de suma de números fraccionarios
      assert_equal("3/8", (@f1 * @f2).to_s)
      assert_equal("4/6", (@f1 / @f2).to_s)
      
      
      
   end
end
