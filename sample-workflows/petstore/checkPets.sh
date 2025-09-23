curl -X 'GET' \
  'http://petstore.dev.me:1880/v2/pet/findByStatus?status=available' \
  -H 'accept: application/json' | jq