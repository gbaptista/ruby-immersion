# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_10 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de classe são acessíveis quando criadas fora da classe:

    assert_equal('class_a', @@variablescope_10_class_a)

    assert_equal('class_a', VariableScope_10.new.read_class_a)

    assert_equal('class_a', VariableScope_10.read_class_a)

    # Variáveis de classe não são acessíveis fora da classe quando criadas dentro dela:
    assert_match(/uninitialized class variable/, assert_raise(NameError){
      @@variablescope_10_class_b
    }.message)

  end

end