# README


## API ベース

* grape
 * Rails サーバに APIサーバ機能を提供する gem
* grape-swagger
 * grape ベースで書かれた APIのソースにDSLを記述する事で、Swagger 形式の API仕様書(JSON形式)を出力する
 * 本サンプルでは、http://localhost:3000/api/swagger_doc に出力される
* grape-swagger-rails
 * grape-swagger で出力されるAPI仕様書をベースに、Webの画面上で API 仕様及び APIの動作確認フォームを提供する
 * 本サンプルでは、http://localhost:3000/swagger で Webの画面が確認できる

## 非同期処理ベース

* resque
 * ActiveJob をサポートする非同期バックエンドの一つ。
 * 本サンプルでは http://localhost:3000/swagger#!/users/postUsers のAPIから、ActiveJob実装タスクを非同期でキックしている
 * また、resque の処理状況を http://localhost:3000/resque で確認できる


非同期処理 resque の起動方法

```
# redis を起動する

$ redis-server

# resque を起動する

$ bundle install rake resque:worker
```

