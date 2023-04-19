# Typesensory

An Elixir client for [Typesense][typesense], *"An open source search engine for
building delightful search experiences."*

Generated with the lovely [OpenAPI Generator][openapi-generator] from the
[Typesense OpenAPI spec][typesense-openapi-spec].

## Installation

The package can be installed by adding `typesensory` to your list of
dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:typesensory, "~> 0.1.0"}
  ]
end
```

## Versioning

| Typesensory version | [Typesense OpenAPI version][typesense-openapi-spec] |
| --- | --- |
| 0.1.x | 0.24.0 |

## Documentation

The documentation, such as it is, is available [on HexDocs][docs].

## Building

To install the required dependencies and build Typesensory, run:

```console
mix do deps.get, compile
```

To build the documentation locally, run:

```console
mix docs
```

## Configuration

You can override the URL of your server (e.g. if you have a separate development
and production server in your configuration files).

```elixir
config :typesensory, base_url: "http://localhost"
```

Multiple clients for the same API with different URLs can be created passing
different `base_url`s when calling `Typesensory.Connection.new/1`:

```elixir
client = Typesensory.Connection.new(base_url: "http://localhost")
```

## Contributing

If find any bugs, or have ideas for improvements, the best way to get involved
is to open an [issue][issues] or a [PR][prs]. PRs to improve and extend the
documentation are especially welcome.


[docs]: https://hexdocs.pm/typesensory
[typesense]: https://typesense.org
[openapi-generator]: https://github.com/OpenAPITools/openapi-generator
[typesense-openapi-spec]: https://github.com/typesense/typesense-api-spec
[issues]: https://github.com/bcksl/typesensory/issues
[prs]: https://github.com/bcksl/typesensory/pulls
