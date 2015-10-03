require 'dispel'

# draw app and redraw after each keystroke
word = ""
Dispel::Screen.open do |screen|
  screen.draw "Initial state, press any key!\n\n   Oh boy!"

  Dispel::Keyboard.output do |key|
    break if key == :"Ctrl+c"
    if key == :backspace
      word = word[0...-1]
    else
      word << key
    end
    screen.draw "Looks like you entered #{word} (Ctrl+c to quit)\n\n That's an awesome #{word.length} characters!"
  end
end
