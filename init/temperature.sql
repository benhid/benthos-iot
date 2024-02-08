CREATE TABLE IF NOT EXISTS foodatabase.temperature (
  device_id String,
  ws_id String,
  ts String,
  change Map(String, Int32),
  old Map(String, Int32)
) ENGINE = MergeTree ORDER BY (device_id, ws_id, ts);