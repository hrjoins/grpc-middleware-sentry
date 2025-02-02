# Go gRPC Middleware for Sentry

![GitHub Workflow](https://img.shields.io/github/workflow/status/johnbellone/grpc-middleware-sentry/go-workflow?style=for-the-badge)
[![Apache 2.0 License](https://img.shields.io/badge/License-Apache%202.0-blue.svg?style=for-the-badge)](LICENSE)

[gRPC Go middleware][0] for [Sentry][1]: server and client interceptors

## Middleware

``` go
import (
    "github.com/getsentry/sentry-go"

    grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
    grpc_sentry "github.com/hrjoins/grpc-middleware-sentry"
)

func main() {
	err = sentry.Init(sentry.ClientOptions{
		Dsn: "https://897a3ef46125472da3ab8766deb302fe7fc7ade3@ingest.sentry.io/42",
		Debug: false,
		Environment: "development",
		Release: "my-project@0.1.0",
		IgnoreErrors: []string{},
	})
	defer sentry.Flush(2 * time.Second)
	if err != nil {
		logger.Fatal(err.Error())
	}

	s := grpc.NewServer(
		grpc.StreamInterceptor(grpc_middleware.ChainStreamServer(
			grpc_sentry.StreamServerInterceptor(),
		)),
		grpc.UnaryInterceptor(grpc_middleware.ChainUnaryServer(
			grpc_sentry.UnaryServerInterceptor(),
		)),
	)
}
```

## License

`grpc-middleware-sentry` is released under the Apache 2.0 license. See the [LICENSE](LICENSE) file for details.

[0]: https://github.com/grpc-ecosystem/go-grpc-middleware
[1]: https://sentry.io
