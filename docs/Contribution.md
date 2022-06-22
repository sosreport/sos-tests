# Contribution

## Create a new test
* __TBP__

## Add downstream tests
Follow these steps:

1. `cp -r /home/makopec/Repositories/supportability/sos-tests/Regression/<test-dir> ./Regression/`
1. `tmt tests import --makefile --nitrate --purpose --type all --verbose .`
1. `tmt tests export --nitrate`

After these steps, do not forget to remove the downstream test from downstream repository.
