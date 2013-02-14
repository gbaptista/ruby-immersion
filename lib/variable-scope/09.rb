# encoding: utf-8

class VariableScope_09

  @instance_var = 'instance_var_class'

  def self.instance_var; @instance_var; end

  def self.instance_var=(value); @instance_var = value; end

  def instance_var; @instance_var; end

  def instance_var=(value); @instance_var = value; end

  def initialize
    @instance_var = 'instance_var'
  end

end