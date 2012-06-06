require 'test/unit'
require 'Baskets'
require 'Goods'
class Basket_Test<Test::Unit::TestCase
  def setup
      @b=Baskets.new
  end
  def test_initialize_goodandnum_should_empty
      assert @b.buy_good.empty?
      assert @b.buy_num.empty?
  end
  def test_add_good_num_should_be_3_good_shuold_be_g
      g=Goods.new('137 塑料杯 个 2.5')
      @b.add(g,3)
      assert_equal 3,@b.buy_num[0]
      assert_equal g,@b.buy_good[0] 
  end
  def test_cal_total_without_promotion
      g=Goods.new('137 塑料杯 个 2.5')
      @b.add(g,3)
      assert_equal 7.5,@b.caltotal
  end
  def test_cal_total_with_promotion_of_id_148
      g=Goods.new('148 火腿肠 袋 6.80')
      @b.add(g,5)
      assert_equal 27.2,@b.caltotal 
  end
  def test_cal_total_with_promotion_of_95discount
      g=Goods.new('148 火腿肠 袋 6.80')
      @b.add(g,30)
      g2=Goods.new('115 大豆调和油1升 瓶 13.25')
      @b.add(g2,5)
      assert_equal 192.1375,@b.caltotal 
  end
end
