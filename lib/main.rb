# To change this template, choose Tools | Templates
# and open the template in the editor.

a_file = File.new("testfile")
a_file.each_byte do |c|
  char = c.chr
  x=char.ord
  if x>32
    x=x-7
  end
  print x.chr
end

