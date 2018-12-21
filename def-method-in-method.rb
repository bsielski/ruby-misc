class Foo
  def outer
    lol = 4
    def inner
      lol
    end
    inner
  end
end
puts Foo.new.outer

=begin

Traceback (most recent call last):
        2: from def-method-in-method.rb:10:in `<main>'
        1: from def-method-in-method.rb:7:in `outer'
def-method-in-method.rb:5:in `inner': undefined local variable or method `lol' for #<Foo:0x000055fdf5d79030> (NameError)
Did you mean?  load

=end
