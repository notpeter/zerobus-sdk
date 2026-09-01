# NEXT CHANGELOG

## Release v2.8.0

### Major Changes

### New Features and Improvements

- On platforms where vendored `protoc` is not available, fallback to trying `protoc` on `PATH` or `PROTOC` environment variable override.

### Bug Fixes

### Documentation

### Internal Changes

### Breaking Changes

### Deprecations

### API Changes

- Added the in-development persistent-stream protobuf contract for creating,
  resuming, ingesting into, and retiring durable streams.
