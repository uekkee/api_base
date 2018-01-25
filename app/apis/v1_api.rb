class V1API < Grape::API
  version 'v1'

  mount V1::Users

end