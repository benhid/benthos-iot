CREATE TABLE IF NOT EXISTS foodatabase.humidity (
  device_id String,
  ws_id String,
  ts String,
  change Int32,
  old Int32
) ENGINE = MergeTree ORDER BY (device_id, ws_id, ts);