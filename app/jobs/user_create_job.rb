class UserCreateJob < ActiveJob::Base
  queue_as :default

  def perform(name)
    Rails.logger.info "User(name: #{name}) created."
  end

end
