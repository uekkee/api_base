class V1::Users < V1::BaseAPI

  format :json

  resource :users, desc: 'ユーザリソース' do
    desc 'all resources'
    get do
      p 'hoge'
      status :accepted
      { result: 'okokok' }
    end

    desc 'single resource'
    params do
      requires :id, type: Integer, desc: 'User ID'
    end
    get ':id' do
      p "hoge #{params[:id]}"
    end

    desc 'create resource'
    params do
      requires :name, type: String, desc: 'user name'
    end
    post do
      p 'fuga'
    end
  end

end