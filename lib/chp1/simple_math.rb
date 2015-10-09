require 'dispel'

# draw app and redraw after each keystroke
numbers = [0, 0]
current_index = 0
Dispel::Screen.open do |screen|
  screen.draw "Welcome to Live Simple Math!\n\n   Oh boy!"

  Dispel::Keyboard.output do |key|
    break if key == :"Ctrl+c"
    case key
    when :backspace
      numbers[current_index] = 0
    when :up
      current_index = (current_index == 0 ? 1 : 0)
    when :down
      current_index = (current_index == 0 ? 1 : 0)
    else
      numbers[current_index] = (numbers[current_index].to_s.concat(key)).to_i
    end
    screen.draw(
      " What is the first number? #{numbers[0]}\n".concat(
      "What is the second number? #{numbers[1]}\n".concat(
      "#{numbers[0]} + #{numbers[1]} = #{numbers[0] + numbers[1]}\n".concat(
      "#{numbers[0]} - #{numbers[1]} = #{numbers[0] - numbers[1]}\n".concat(
      "#{numbers[0]} * #{numbers[1]} = #{numbers[0] * numbers[1]}\n".concat(
      "#{numbers[0]} / #{numbers[1]} = #{numbers[1] > 0 ? numbers[0] / numbers[1] : 'na'}\n"
    ))))),[],[current_index,27+numbers[current_index].to_s.length])
  end
end
