require 'spec_helper'

describe UseCase do
  class TestUseCase < UseCase
    query :list
    command :create

    class ListQuery < UseCase::Action
      def query(*args)
        "Hello #{ctx.user}"
      end
    end

    class CreateCommand < UseCase::Action
      def execute(*args)
        true
      end
    end
  end

  example do
    uc = TestUseCase.new(user: 'user')
    uc.list.should == 'Hello user'
    uc.create!.should be_true
  end
end
