class V1::Users < V1::BaseAPI

  format :json

  resource :users, desc: 'ユーザリソース' do
    desc '一覧取得', {
      headers: AUTH_HEADER_DESCRIPTION,
      detail: <<-NOTE
詳細では **MarkDown形式** での記述が可能。

## 見出し

* 箇条書き
 * その1-1
* 説明その2
* 説明その3

```ruby
['aa', 'bb'].each do |v|
  puts "this is a test code \#{v}"
end
```
      NOTE
    }
    get do
      status :ok

      [
        { id: 112, name: '112さん' },
        { id: 234, name: '234さん' },
      ]
    end

    desc '単一リソースの取得', {
      headers: AUTH_HEADER_DESCRIPTION,
      detail: <<-NOTE
詳細をここに書く。
      NOTE
    }
    params do
      requires :id, type: Integer, desc: 'ユーザID'
    end
    get ':id' do
      status :ok

      { id: params[:id], name: "#{params[:id]}さん" }
    end

    desc 'リソースの生成', {
      headers: AUTH_HEADER_DESCRIPTION,
      detail: <<-NOTE
詳細をここに書く。
      NOTE
    }
    params do
      requires :name, type: String, desc: 'ユーザ名'
    end
    post do
      status :created

      { id: (rand*1000).to_i, name: params[:name] }
    end
  end

end