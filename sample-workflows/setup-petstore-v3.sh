podman pull swaggerapi/petstore3:unstable

podman run --name petstore -d -p 1880:8080 swaggerapi/petstore3:unstable
# podman run --name petstore -d -e SWAGGER_HOST=http://petstore.dev.me \
#   -e SWAGGER_URL=http://petstore.dev.me:1880 \
#   -e SWAGGER_BASE_PATH=/v3 \
#   -p 1880:8080 swaggerapi/petstore3:unstable