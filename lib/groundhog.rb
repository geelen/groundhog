# encoding: UTF-8

# USAGE:
#
# 1. In a console, type Groundhog.day to start the loop.
# 2. Go nuts! There are _literally_ no consequences to your actions.
# 3. Press ^D to end it all wake up in your comfy bed.
# 4. Quickly press ^D ^C to get out of Punxsutawney and back to your normal life.

require 'pry'

class Groundhog
  def self.day
    puts "\nOkay, campers, rise and shine, and don't forget your booties 'cause it's cooooold out there today!"
    puts "Usage: ctrl-D to reset transaction, ctrl-D ctrl-C (quickly) to get out of the loop"
    loop do
      puts "\n  ♫  Then put your little hand in mine ♫"
      ActiveRecord::Base.transaction do
        binding.pry :quiet => true
        raise ActiveRecord::Rollback
      end
      puts "  ** DAY ENDS **"
      sleep 0.5
    end
  end
end
