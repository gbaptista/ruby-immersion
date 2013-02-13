# encoding: utf-8

class VariableScope_08

  def instance_var
    @instance_var
  end

  def self.instance_var
    @instance_var
  end

  def initialize
    @instance_var = 'instance_var'
  end

end