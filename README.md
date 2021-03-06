# BeakerLib tests suite for sosreport

These tests are executed in [sos repository](https://github.com/sosreport/sos) using [sos/utils library](https://github.com/beakerlib/sos).

# Table of Contents
1. [Setup](#setup)
1. [Usage](#usage)
1. [Branching](#branching)
1. [Contacts](#contacts)
# Additional documentation
1. [Automation](docs/Automation.md)
1. [Contribution](docs/Contribution.md)

# Setup

## Requirements
* `pre-commit` (See [website](https://pre-commit.com/))
* `tmt` (See [tmt repository](https://github.com/teemtee/tmt))
* `shellcheck` (See [shellcheck repository](https://github.com/koalaman/shellcheck))

## pre-commit
> It is a multi-language package manager for pre-commit hooks. You specify a list of hooks you want and pre-commit manages the installation and execution of any hook written in any language before every commit.

* Enable the `pre-commit` to run on each `git commit` command.
    * `pre-commit install`
* You can manually check the `pre-commit` hooks by running:
    * `pre-commit run --all-files`

# Usage

Tests are selected in test plans which are located in [sos repository](https://github.com/sosreport/sos).
The new pull request execute automatically selected tests and the results can be checked in `Checks` tab.

## Rescheduling tests
To retrigger the tests, you can have to add a following comment to your pull request:
* `/packit test`  
to manually reschedule all tests
* `/packit retest-failed`  
to manually reschedule failed tests

---
For more information on Testing Farm and Packit integration, see [Testing Farm documentation](https://packit.dev/docs/testing-farm/) on Packit website.  
For more detailed explanation of the automation please read [Automation](docs/Automation.md) page.

# Branching
__NOT IMPLEMENTED YET__

These upstream tests are being run in downstream pipeline as well as upstream one.
That is why we need to branch tests functionality on RHEL releases.


# Contacts
* Testing Farm issues
    * E-mail to [tft@redhat.com](mailto:tft@redhat.com)
    * File and issue in [Testing Farm GitLab](https://gitlab.com/testing-farm/general/-/issues)
* Packit issues
    * See [Packit Status Page](https://status.packit.dev/)
    * See [Contact information](https://packit.dev/docs/faq/#how-can-i-contact-you)
