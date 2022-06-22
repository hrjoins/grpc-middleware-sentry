module github.com/johnbellone/grpc-middleware-sentry

go 1.17

require (
	github.com/getsentry/sentry-go v0.13.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.2.2
	google.golang.org/grpc v1.35.0
)

require (
	github.com/golang/protobuf v1.4.2 // indirect
	golang.org/x/net v0.0.0-20211008194852-3b03d305991f // indirect
	golang.org/x/sys v0.0.0-20211007075335-d3039528d8ac // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	google.golang.org/protobuf v1.25.0 // indirect
)

replace github.com/getsentry/sentry-go v0.13.0 => github.com/GalaxiteMC/sentry-go v0.14.0
