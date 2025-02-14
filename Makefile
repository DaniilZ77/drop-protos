SERVICE_NAME=audio

# Proto generator for Go
gen-go:
	protoc \
		-I proto proto/${SERVICE_NAME}/*.proto \
		--go_out=./gen/go/ --go_opt=paths=source_relative \
		--go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative \
		--grpc-gateway_out=./gen/go --grpc-gateway_opt=paths=source_relative \
		--openapiv2_out=./gen/go
