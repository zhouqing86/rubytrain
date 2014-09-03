Dir.glob(File.join(File.dirname(__FILE__), %w(.. lib *.rb ))).each do |file|
  require file
end