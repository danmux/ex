module github.com/circleci/ex

go 1.17

require (
	github.com/DataDog/datadog-go v4.8.3+incompatible
	github.com/alecthomas/kong v0.6.1
	github.com/aws/aws-sdk-go-v2 v1.16.12
	github.com/aws/aws-sdk-go-v2/config v1.17.3
	github.com/aws/aws-sdk-go-v2/credentials v1.12.16
	github.com/aws/aws-sdk-go-v2/feature/s3/manager v1.11.29
	github.com/aws/aws-sdk-go-v2/service/s3 v1.27.7
	github.com/cenkalti/backoff/v4 v4.1.3
	github.com/gin-gonic/gin v1.8.1
	github.com/go-redis/redis/v9 v9.0.0-beta.2
	github.com/google/go-cmp v0.5.8
	github.com/hashicorp/golang-lru v0.5.4
	github.com/hellofresh/health-go/v4 v4.6.0
	github.com/honeycombio/beeline-go v1.10.0
	github.com/honeycombio/dynsampler-go v0.2.1
	github.com/honeycombio/libhoney-go v1.16.0
	github.com/jackc/pgconn v1.13.0
	github.com/jackc/pgx/v4 v4.17.1
	github.com/jmoiron/sqlx v1.3.5
	github.com/jolestar/go-commons-pool/v2 v2.1.2
	github.com/klauspost/compress v1.15.9
	github.com/makasim/amqpextra v0.17.0
	github.com/rabbitmq/amqp091-go v1.4.0
	github.com/rollbar/rollbar-go v1.4.4
	github.com/vmihailenco/go-tinylfu v0.2.2
	go.mongodb.org/mongo-driver v1.10.1
	golang.org/x/net v0.0.0-20220520000938-2e3eb7b945c2
	golang.org/x/sync v0.0.0-20220601150217-0de741cfad7f
	google.golang.org/grpc v1.49.0
	google.golang.org/protobuf v1.28.1
	gotest.tools/v3 v3.3.0
)

require (
	github.com/Microsoft/go-winio v0.5.0 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.4.5 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.12.13 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.19 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.13 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.3.20 // indirect
	github.com/aws/aws-sdk-go-v2/internal/v4a v1.0.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.9.6 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/checksum v1.1.14 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.9.13 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.13.13 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.11.19 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.13.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.16.15 // indirect
	github.com/aws/smithy-go v1.13.0 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/facebookgo/clock v0.0.0-20150410010913-600d898af40a // indirect
	github.com/facebookgo/limitgroup v0.0.0-20150612190941-6abd8d71ec01 // indirect
	github.com/facebookgo/muster v0.0.0-20150708232844-fd3d7953fd52 // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.0 // indirect
	github.com/goccy/go-json v0.9.7 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.3.1 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/jackc/pgtype v1.12.0 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/montanaflynn/stats v0.0.0-20171201202039-1bf9dbcd8cbe // indirect
	github.com/pelletier/go-toml/v2 v2.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/ugorji/go/codec v1.2.7 // indirect
	github.com/vmihailenco/msgpack/v5 v5.3.5 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.1.1 // indirect
	github.com/xdg-go/stringprep v1.0.3 // indirect
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d // indirect
	go.opentelemetry.io/otel v1.7.0 // indirect
	go.opentelemetry.io/otel/trace v1.7.0 // indirect
	golang.org/x/crypto v0.0.0-20220722155217-630584e8d5aa // indirect
	golang.org/x/sys v0.0.0-20220513210249-45d2b4557a2a // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/genproto v0.0.0-20210602131652-f16073e35f0c // indirect
	gopkg.in/alexcesaro/statsd.v2 v2.0.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)
