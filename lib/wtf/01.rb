# encoding: utf-8

class Wtf_Human_01

  @var = { 'name' => 'Calvin' }
  def self.var
    @var
  end
  def self.var=(value)
    @var = value + ':writer'
  end

end