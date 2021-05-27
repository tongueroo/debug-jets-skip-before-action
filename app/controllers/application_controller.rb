class ApplicationController < Jets::Controller::Base
  before_action :before_callback
private
  def before_callback
    @before_callback = true
    puts "ApplicationController::before called".color(:yellow)
  end
end
