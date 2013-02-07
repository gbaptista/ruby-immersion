require 'rake/testtask'

# rake
# rake test
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*/test_*.rb']
end

# rake t modules:2
# rake test_only modules:2
#
# test/modules/test_02.rb
task :test_only do
  rule '' do |t|
    if t.name.match ':'
      Rake::TestTask.new(t.name) do |tt|
        fn = t.name.split(':')
        fn[1] = '0' + fn[1].to_s if fn[1].to_s.size == 1
        tt.test_files = ["test/#{fn[0]}/test_#{fn[1]}.rb"]
      end
    end
  end
end
task :t => :test_only

# rake g modules:3
# rake generate modules:3
#
# lib/modules/03.rb
# test/modules/test_03.rb
task :generate do
  rule '' do |t|
    if t.name.match ':'
      fn = t.name.split(':')

      fn[1] = '0' + fn[1].to_s if fn[1].to_s.size == 1

      Dir::mkdir "lib/#{fn[0]}" if !FileTest::directory? "lib/#{fn[0]}"
      Dir::mkdir "test/#{fn[0]}" if !FileTest::directory? "test/#{fn[0]}"

      File.open("lib/#{fn[0]}/#{fn[1]}.rb", 'w') { |f| f.write "# encoding: utf-8

class #{fn[0].capitalize}_Human_#{fn[1]}

  def self.talk
    'strawberry'
  end

end" }
      File.open("test/#{fn[0]}/test_#{fn[1]}.rb", 'w') { |f| f.write "# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_#{fn[0].capitalize}_#{fn[1]} < Test::Unit::TestCase

  def test_with_love

    # gowebgo!
    assert_equal('strawberry', #{fn[0].capitalize}_Human_#{fn[1]}.talk)

  end

end" }
    
      if FileTest::exists? 'lib/custom_generator_actions.rb'
        eval(File.new('lib/custom_generator_actions.rb').read)
      end

      puts "\nCreated: lib/#{fn[0]}/#{fn[1]}.rb\nCreated: test/#{fn[0]}/test_#{fn[1]}.rb\n\n"

    end

  end

end
task :g => :generate

desc 'Run tests'
task :default => :test