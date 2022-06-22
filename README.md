# BeakerLib tests suite for sosreport

These tests are executed in [sos repository](https://github.com/sosreport/sos) using [sos/utils library](https://github.com/beakerlib/sos).

# Table of Contents
1. [Setup](#setup)
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

# Branching
__NOT IMPLEMENTED YET__

These upstream tests are being run in downstream pipeline as well as upstream one.
That is why we need to branch tests functionality on RHEL releases.


# Contacts
* Testing Farm issues
    * File and issue in [Testing Farm GitLab](https://gitlab.com/testing-farm/general/-/issues)
* Packit issues
    * See [Packit Status Page](https://status.packit.dev/)
    * See [Contact information](https://packit.dev/docs/faq/#how-can-i-contact-you)
