class UseCase
  class << self
    def command(name, *args)
      self.send(:define_method, "#{name}!") do |*args|
        self.class.const_get("#{name.to_s.camelize}Command")
        .new(ctx).execute(*args)
      end
    end

    def query(name, *args)
      self.send(:define_method, "#{name}") do |*args|
        self.class.const_get("#{name.to_s.camelize}Query")
        .new(ctx).query(*args)
      end
    end
  end

  class Context < OpenStruct
  end

  class Action
    attr_reader :ctx
    def initialize(ctx)
      @ctx = ctx
    end
  end

  attr_reader :ctx
  def initialize(opts)
    @ctx = Context.new(opts)
  end
end
