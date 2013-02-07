# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # Métodos de módulo podem ser acessados por . ou :::
    assert('bla', Human2::talk)

    assert('bla', Human2.talk)

  end

end