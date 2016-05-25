class V1::BaseAPI < Grape::API

  rescue_from Grape::Exceptions::ValidationErrors do |e|
    error_response(message: e.message, status: 400)
  end

end