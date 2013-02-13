# encoding: utf-8

class VariableScope_06

  @instance_var = 'instance_var'

  def self.instance_var
    @instance_var
  end

  def self.instance_var=(value)
    @instance_var = value
  end

end