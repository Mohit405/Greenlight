run:
	@go run ./cmd/api
tidy:
	@go mod tidy

migrate up:
	migrate -path=./migrations -database=${GREENLIGHT_DB_DSN} up

migrate down:
	migrate -path=./migrations -database=${GREENLIGHT_DB_DSN} down