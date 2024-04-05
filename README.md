# envio-hyperindex-integration-test-suite

E2e test bed to ensure there are no regressions or unintended breaking changes in hyperindex and the hosted service.

This repo aspires to test the end to end functionality for a developer using [Envio HyperIndex](https://www.npmjs.com/package/envio).

Each folder represents an individual indexer that collectively should test all the features and functionality of HyperIndex and the hosted service.

These integration tests will start as a fairly manual process and be incrementally automated into our pipeline

## setup

`cp config.mk.example config.mk` - and edit

## Run

`make all`

---

# todo

- support `make local` and `make` w envio version set in config
- outline versioning and branches of these tests
