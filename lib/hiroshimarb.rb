require "hiroshimarb/version"
require 'hiroshimarb/cli'

module Hiroshimarb
  extend CLI

  class << self
    def execute(argv)
      return help if argv.count == 0

      command = argv.shift
      case command
      when 'open'
        open
      when 'info'
        info
      when 'member'
        member
      else
        help
      end
    end
  end
end
