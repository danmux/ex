package rabbit

import (
	"context"
	"encoding/base64"
	"net/http"
	"net/url"
	"time"

	"github.com/circleci/ex/config/secret"
	"github.com/circleci/ex/httpclient"
)

type Client struct {
	client *httpclient.Client
}

type VHostInfo struct {
	Name        string `json:"name"`
	Description string `json:"description"`
}

func NewClient(baseURL, username string, password secret.String) *Client {
	return &Client{client: httpclient.New(httpclient.Config{
		Name:       "rabbitmq",
		BaseURL:    baseURL,
		AuthHeader: "Authorization",
		AuthToken:  "Basic " + basicAuth(username, password),
		Timeout:    30 * time.Second,
	})}
}

func basicAuth(username string, password secret.String) string {
	auth := username + ":" + password.Value()
	return base64.StdEncoding.EncodeToString([]byte(auth))
}

func (c *Client) ListVHosts(ctx context.Context) (info []VHostInfo, err error) {
	err = c.client.
		NewRequest("GET", "/api/vhosts").
		SetSuccessDecoder(httpclient.NewJSONDecoder(&info)).
		Call(ctx)

	if err != nil {
		return nil, err
	}
	return info, nil
}

func (c *Client) DeleteVHost(ctx context.Context, name string) error {
	err := c.client.
		NewRequest(
			"DELETE",
			"/api/vhosts/%s",
			url.PathEscape(name),
		).
		SetTimeout(5 * time.Second).
		Call(ctx)
	if httpclient.HasStatusCode(err, http.StatusNotFound) {
		return nil
	}
	if httpclient.IsNoContent(err) {
		return nil
	}
	return err
}

type VHostSettings struct {
	Description string   `json:"description"`
	Tags        []string `json:"tags"`
	Tracing     bool     `json:"tracing"`
}

func (c *Client) PutVHost(ctx context.Context, name string, settings VHostSettings) error {
	return c.client.
		NewRequest(
			"PUT",
			"/api/vhosts/%s",
			url.PathEscape(name),
		).
		SetTimeout(5 * time.Second).
		SetBody(settings).
		Call(ctx)
}

type Permissions struct {
	Configure string `json:"configure"`
	Write     string `json:"write"`
	Read      string `json:"read"`
}

func (c *Client) UpdatePermissionsIn(ctx context.Context, vhost, username string, p Permissions) error {
	return c.client.
		NewRequest(
			"PUT",
			"/api/permissions/%s/%s",
			url.PathEscape(vhost),
			url.PathEscape(username),
		).
		SetTimeout(5 * time.Second).
		SetBody(p).
		Call(ctx)
}
