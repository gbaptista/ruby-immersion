# encoding: utf-8

class VariableScope_11

  @@class_var = 'class_var'

  def class_var; @@class_var; end
  def class_var=(value); @@class_var = value; end

  def self.class_var; @@class_var; end
  def self.class_var=(value); @@class_var = value; end

end