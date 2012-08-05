require 'logger'

module ShinyChef
module Logger
  def logger
    if @logger.nil? then
      @logger = ::Logger.new(STDOUT)
      if ENV['SHINY_CHEF_DEBUG'].nil? then
        @logger.level = ::Logger::INFO
      else
        @logger.level = ::Logger::DEBUG
      end
      @logger.formatter = proc do |severity, datetime, progname, msg|
          "#{datetime} | #{severity} | #{self.class.to_s} | #{msg}\n"
      end
    end
    @logger
  end
end
end
