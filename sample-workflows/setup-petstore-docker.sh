podman pull swaggerapi/petstore
# SWAGGER_HOST - the host that you will be serving the API on
# SWAGGER_URL- the URL you will accessing this API on. Please be aware that SWAGGER_URL replaces the value in SWAGGER_HOST but both should be used as they serve different purposes
podman run -d -e SWAGGER_HOST=http://petstore.dev.me \
  -e SWAGGER_URL=http://petstore.dev.me:1880 \
  -e SWAGGER_BASE_PATH=/v2 -p 1880:8080 swaggerapi/petstore
