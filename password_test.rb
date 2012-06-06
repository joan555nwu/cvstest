require 'test/unit'
require 'password'
class CvsTest<Test::Unit::TestCase
   def test_check_correct
       STDIN.gets('hjq')
       re=check
       STDIN.gets('hjq')
       assert_equal 1,re
   end
end
