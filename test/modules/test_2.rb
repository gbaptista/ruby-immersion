# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTestModules2 < Test::Unit::TestCase

  def test_with_love

    # Métodos de módulo e constantes podem ser acessados pelo módulo:
    
    assert('petit gateau', Human2::talk)

    assert('petit gateau', Human2.talk)

    assert('purple', Human2::EYES)

  end

end