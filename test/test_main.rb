# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'main'

class TestMain < Test::Unit::TestCase
  def test_main
    a_file = File.new("testfile")
    i=0
    test_output="*CDC is the trademark of the Control Data Corporation.\n*IBM is a trademark of the International Business Machine Corporation.\n*DEC is the trademark of the Digital Equipment Corporation.\n"
    a_file.each_byte do |c|
      char = c.chr
      
      x=char.ord
      if x>32
        x=x-7
      end
      assert_equal(x.chr,test_output[i])
      i=i+1

    end
  end
end
