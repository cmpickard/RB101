#How could the following method be simplified without changing its return value?

=begin
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
=end

def color_valid(color)
  color == "blue" || color == "green"
end