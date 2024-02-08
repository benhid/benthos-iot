# IoT Data Pipeline with Benthos

A Benthos pipeline that reads IoT data from any source and writes it to a Clickhouse database.

## Setup

Run Clickhouse with Docker:

```bash
docker run --rm -p 18123:8123 -p 19000:9000 -e CLICKHOUSE_DB=foodatabase --name some-clickhouse-server clickhouse/clickhouse-server
```

The `config.yaml` file contains the configuration for the pipeline. Run it with Benthos using the following command:

```bash
benthos -c config.yaml
```

## Testing

You can test the processing pipeline using Benthos itself:

```bash
benthos test config_benthos_test.yaml
```