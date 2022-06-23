# Automation

## Running tests

### The principles

The tests located in this repository are executed in [sos repository](https://github.com/sosreport/sos) by Testing Farm.
Packit creates the rpm for each pull request in sos repository, this rpm is then used in an isolated environment together with tests from this repository.

The diagram below shows this work flow. When the new pull request is created in sos repository, the Packit service creates the rpm from it.
After that, the Testing Farm clones this repository inside a container and uses the rpm from Packit to run cloned tests on the pull request.
The results are shown on GitHub under tab – Checks.

### Selecting tests

To choose which tests will be executed the [tmt test plans](https://tmt.readthedocs.io/en/stable/spec/plans.html) are used. These test plans are stored in [sos repository](https://github.com/sosreport/sos). If you wish to exclude some of the tests or include more, adjust the value of `filter` keyword in test plan. You can also create new test plan with some restrictions on the system where the tests will be running – see more in [tmt docs](https://tmt.readthedocs.io/en/stable/index.html).

The example below shows how a general test plan can look like.

```yaml
summary: All upstreamed shell tests plan
description:
    Execute BeakerLib tests from a different repository
discover:
    how: fmf
    url: https://github.com/sosreport/sos-tests.git
    ref: main
    filter: "tier: 0, 1, 2"
execute:
    how: tmt

```


## Diagram

```
                                                  +--------+
+-------+           +--------------+              |        |
|  sos  +---------->| Pull Request +------------->| Packit |
+-------+           +--------------+              |        |
                           ^                      +---+----+
                           |                          |
                           |                          v
                    +------+-------+               +-----+
                    |    Checks    |               | rpm |
                    +--------------+               +--+--+
                           ^                          |
                           |                          v
                           |                   +--------------+
                           |                   |              |     +-----------+
                           +-------------------+ Testing Farm |<----+ sos-tests |
                                               |              |     +-----------+
                                               +--------------+
```
> The diagram was created using https://asciiflow.com/
