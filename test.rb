require 'rurses'

Rurses.program(modes: %i[c_break no_echo keypad]) do |screen|
  screen.draw_string("Enter a key:  ")

  key = Rurses.get_key

  screen.move_cursor(x: 0, y: 1)
  screen.style(:bold) do
    screen.draw_string("You typed %p." % key)
  end

  screen.refresh_in_memory
  Rurses.update_screen
end
