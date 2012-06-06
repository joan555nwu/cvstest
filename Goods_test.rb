require 'test/unit'
require 'Goods'
class GoodsTest<Test::Unit::TestCase
   def test_initialize_correct
      g=Goods.new('137 塑料杯 个 2.5')
      assert_equal '137',g.id
   end
end
