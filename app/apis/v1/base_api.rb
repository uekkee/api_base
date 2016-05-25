class V1::BaseAPI < Grape::API

  AUTH_HEADER_DESCRIPTION = {
    'X-Hoshino-Api-Key' => {
      description: 'API認証キーを設定',
      required: true
    }
  }

  rescue_from Grape::Exceptions::ValidationErrors do |e|
    error_response(message: e.message, status: 400)
  end

end