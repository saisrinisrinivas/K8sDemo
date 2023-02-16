from golang:1.19.5-alpine3.17

run mkdir /webhooks

workdir /webhooks

copy . .

run go mod download

run go build -o ./webhooks_build

cmd ["./webhooks_build"]
