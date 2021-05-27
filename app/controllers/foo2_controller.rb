class Foo2Controller < ApplicationController
  def a
    render json: {foo: 2, action: "a", before_callback: !!@before_callback, message: "should be true"}
  end

  def b
    render json: {foo: 2, action: "b", before_callback: !!@before_callback, message: "should be true"}
  end
end
