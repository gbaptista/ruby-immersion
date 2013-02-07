# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_02 < Test::Unit::TestCase

  def test_with_love

    # Constantes e métodos de módulo podem ser acessados pelo módulo:

    assert_equal('petit gateau', Modules_Human_02::talk)

    assert_equal('petit gateau', Modules_Human_02.talk)

    assert_equal('purple', Modules_Human_02::EYES)

  end

end