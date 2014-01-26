require_relative "cwflash/version"
require "brasspounder"

module Cwflash
  class Runner
    def initialize(filename="01-eish.json")
      @path = File.absolute_path(File.join(File.dirname(__FILE__), "..", "sample", filename))
    end
    
    def run
      sender = Brasspounder::Sender.new(speed = :norm, freq = 600, verbose = false)
      cards = Querinator::Importer.new.parse(@path)
      
      cards.shuffle.each do |card|
        puts "\n   Playing  #{card.pose.upcase}\n\n"


        sender.send card.pose

        print "What was that code?\n-> "
        input = gets()
        input = input.chomp

        if  card.is_correct?(input)
          puts "Hooray!!"
        else
          puts "oooooh."
          puts "The correct answer was '#{card.answer.upcase}'"
        end
      end
    end
  end

end
