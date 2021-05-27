class Foo1Controller < ApplicationController
  skip_before_action :before_callback
  def a
    render json: {foo: 1, action: "a", before_callback: !!@before_callback, message: "should be false"}
  end

  def b
    render json: {foo: 1, action: "b", before_callback: !!@before_callback, message: "should be false"}
  end
end
