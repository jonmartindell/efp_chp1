
module Chp1
  class Prompter2
    attr_accessor :prompt_text, :force

    def self.prompt(prompt_text, force=false)
      prompt_text = prompt_text << " "
      print prompt_text
      response = STDIN.gets.strip
      if force && response.length == 0
        puts "You must enter a response."
        prompt
      else
        response
      end
    end
  end
end
