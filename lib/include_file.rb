module IncludeFile

  def self.inject source

    require File.dirname(source).split('/').last + '/' + source.scan(/[0-9]{1,}/).first

  end

end