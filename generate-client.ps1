New-Item -ItemType Directory -Force -Path ./docs/openapi
iwr http://localhost:5000/swagger/v1/swagger.json -o ./docs/openapi/api-v1.json
autorest --input-file=./docs/openapi/api-v1.json --v3 --csharp --use-datetimeoffset=true --sync-methods=none --output-folder=./src/SampleApi.Client --namespace=SampleApi.Client
