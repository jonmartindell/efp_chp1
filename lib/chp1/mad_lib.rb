require_relative "prompter"

module Chp1
  class MadLib
    def run
      prompt
      create
      display
    end

    private
    attr_accessor :story, :noun, :verb, :adj, :adverb
    def prompt
      self.noun = Prompter2.prompt("Enter a noun:", true)
      self.verb = Prompter2.prompt("Enter a verb:", true)
      self.adj = Prompter2.prompt("Enter a adjective:", true)
      self.adverb = Prompter2.prompt("Enter a adverb:", true)
    end

    def create
      self.story = "Do you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!"
    end

    def display
      puts story
    end
  end
end
