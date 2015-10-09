require "chp1/version"
require "chp1/mad_lib"

module Chp1
  class Prompter
    attr_accessor :prompt_text, :force

    def initialize(prompt_text, force=false)
      @force = force
      @prompt_text = prompt_text << " "
    end

    def prompt
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

  class Greeter_v1
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def greet
      puts greeting
    end

    private
    def greeting
      "Hello, #{name}, nice to meet you!"
    end
  end

  #(1..1).each { Greeter_v1.new(Prompter.new("What is your name?").prompt).greet }

  class Greeter_v2

    def self.greet
      puts greeting
    end

    private
    def self.prompt
      print prompt_text << " "
      STDIN.gets.strip
    end

    def self.prompt_text
      "What is your name?"
    end

    def self.greeting
      "Hello, #{prompt}, nice to meet you!"
    end
  end

  #(1..1).each { Greeter_v2.greet }

  class CharCounter
    def initialize(word)
      @word = word
    end

    def report
      puts "#{@word} has #{@word.length} characters."
    end
  end

  #(1..1).each { CharCounter.new(Prompter.new("What is the input string?", true).prompt).report }

  class QuotePrinter
    def self.run
      quote = Prompter.new("What is the quote?", true).prompt
      quotee = Prompter.new("Who said it?").prompt
      puts "#{quotee} says, \"#{quote}\""
    end
  end

  #(1..2).each { QuotePrinter.run }

  #require_relative "chp1/char_length"
end
