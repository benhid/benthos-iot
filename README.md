# IoT Data Pipeline with Benthos

A Benthos pipeline that reads IoT data from any source and writes it to a Clickhouse database.

## Setup

Run Clickhouse with Docker:

```console
docker run --rm -p 18123:8123 -p 19000:9000 -e CLICKHOUSE_DB=foodatabase --name some-clickhouse-server clickhouse/clickhouse-server
```

The `config.yaml` file contains the configuration for the pipeline. Run it with [Benthos](https://www.benthos.dev) using the following command:

```console
benthos -c config.yaml
```

## Testing

You can test the processing pipeline using Benthos itself:

```console
benthos test config_benthos_test.yaml
```
