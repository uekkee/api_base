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

