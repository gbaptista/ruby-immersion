# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Wtf_01 < Test::Unit::TestCase

  def test_with_love

    # A variável de instância tem um valor pré-definido:
    assert_equal({ 'name' => 'Calvin' }, Wtf_Human_01.var)

    # Este código não passa pelo writer: self.var=(value)

    Wtf_Human_01.var['name'] = 'Zooey'

=begin

    Isto ocorre pois ele é interpretado da seguinte maneira:
    Primeiro ele usa o reader: self.var
      reference_var = Wtf_Human_01.var

    Depois o valor é setado diretamente na referência da variável:
      reference_var['name'] = 'Zooey'

=end

    # E o valor é armazenado na variável de instância:
    assert_equal({ 'name' => 'Zooey' }, Wtf_Human_01.var)

    # Exemplo prático do cenário descrito acima:

    reference_var = Wtf_Human_01.var

    reference_var['name'] = 'Megan'

    assert_equal({ 'name' => 'Megan' }, Wtf_Human_01.var)

    # Apenas ao setar todo o valor da variável é que o writer é executado:
    Wtf_Human_01.var = 'Test'
    assert_equal('Test:writer', Wtf_Human_01.var)

  end

end