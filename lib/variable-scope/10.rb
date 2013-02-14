# encoding: utf-8

@@variablescope_10_class_a = 'class_a'

class VariableScope_10

  @@variablescope_10_class_b = 'class_b'

  def read_class_a
    @@variablescope_10_class_a
  end

  def self.read_class_a
    @@variablescope_10_class_a
  end

end