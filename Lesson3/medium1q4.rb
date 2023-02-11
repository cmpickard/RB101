=begin
Alyssa was asked to write an implementation of a rolling buffer. Elements are 
dded to the rolling buffer and if the buffer becomes full, then new elements 
that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for 
modifying the buffer?". Is there a difference between the two, other than what 
operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

ANSWER:
The << operator mutates the caller while the += operator does not. As a result
the first implementation actually changes the object that the buffer argument
is pointing to, meaning you don't need to return buffer at the end: the changes
have already been "saved" b/c it was the original object being modified, not 
a copy. 
The other implementation does need to pass back the buffer array b/c that 
version of the method created a brand new array and pointed the buffer variable
at it. The original object that the buffer argument points to is unchanged as is
the fact that the buffer argument points at that object.
=end