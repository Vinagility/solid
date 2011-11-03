class Solid::Block < Liquid::Block

  class << self

    def name(value=nil)
      if value
        @name = value
        Liquid::Template.register_tag(value, self)
      end
      @name
    end

  end

  def initialize(tag_name, arguments_string, tokens)
     super
     @arguments = Solid::Arguments.new(arguments_string)
  end

  def render(context)
    display(*@arguments.parse(context)) do
      super
    end
  end

  def display(*args)
    raise NotImplementedError.new("#{self.class.name} subclasses SHOULD define a #display method")
  end

end
