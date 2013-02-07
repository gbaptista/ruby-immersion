# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTestModules2 < Test::Unit::TestCase

  def test_with_love

    # Métodos de módulo e constantes podem ser acessados pelo módulo:
    
    assert_equal('petit gateau', Human2::talk)

    assert_equal('petit gateau', Human2.talk)

    assert_equal('purple', Human2::EYES)

  end

end