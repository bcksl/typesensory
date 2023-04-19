.PHONY: all
all:
	mix compile

.PHONY: generate
generate:
	openapi-generator generate \
		-i typesense.openapi.yml \
		-g elixir \
		-o . \
		--additional-properties=invokerPackage=Typesensory,elixirPackageName=typesensory
