CLASSES =  [Class, Integer, String, Hash, Symbol, Proc, Module, Array, Object, Kernel, Float, NilClass]

REPEAT_OBJECTS_TIMES = 100_000

OBJECTS = [1, 3.3, "ruby", :ruby, Class.new, Module, Object.new, proc {}, [], {}, nil] * REPEAT_OBJECTS_TIMES

OBJECTS.each do |obj|
  CLASSES.each do |klass|
    obj.instance_of?(klass)
  end
end
