# encoding: utf-8

class VariableScope_04

  $variablescope_04_global = 'Around The World'

  def read_global
    $variablescope_04_global
  end

  def write_global=(value)
    $variablescope_04_global = value
  end

end