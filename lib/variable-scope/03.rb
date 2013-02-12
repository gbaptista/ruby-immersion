# encoding: utf-8

$variablescope_03_global_a = 'global_a'

class VariableScope_03

  $variablescope_03_global_b = 'global_b'

  def self.public_method; $variablescope_03_global_c = 'global_c'; end

  def public_method; $variablescope_03_global_d = 'global_d'; end

  protected

  def protected_method; $variablescope_03_global_e = 'global_e'; end

  private

  def private_method; $variablescope_03_global_f = 'global_f'; end

  def self.private_method; $variablescope_03_global_g = 'global_g'; end

  private_class_method :private_method

end