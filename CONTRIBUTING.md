# Contributing

**All communication on GitHub, the community forum, and other HashiCorp-provided communication channels is subject to [the HashiCorp community guidelines](https://www.hashicorp.com/community-guidelines).**

This document provides guidance on contribution recommended practices. It covers what we're looking for in order to help set some expectations and help you get the most out of participation in this project.

To record a bug report, enhancement proposal, or give any other product feedback, please [open a GitHub issue](https://github.com/hashicorp/policy-library-cis-aws-rds-terraform/issues/new/choose) using the most appropriate issue template.
Please do fill in all of the information the issue templates request, because know from experience that this will maximize the chance that we'll be able to act on your feedback.

---

## Table of Contents

<!-- MarkdownTOC autolink="true" -->

- [Proposing a Change](#proposing-a-change)
    - [Pull Request Lifecycle](#pull-request-lifecycle)
        - [Getting Your Pull Requests Merged Faster](#getting-your-pull-requests-merged-faster)
    - [PR Checks](#pr-checks)
- [Sentinel Development Environment](#sentinel-development-environment)

<!-- /MarkdownTOC -->

## Proposing a Change

In order to be respectful of the time of contributors, we aim to discuss potential changes in GitHub issues prior to implementation.
That will allow us to give design feedback up front and set expectations about the scope of the change, and,
for larger changes, how best to approach the work such that the Policy team can review it and merge it along with other concurrent work.

If the bug you wish to fix or enhancement you wish to implement isn't already covered by a GitHub issue that
contains feedback from the Policy team, please do start a discussion
(either in [a new GitHub issue](https://github.com/hashicorp/policy-library-cis-aws-rds-terraform/issues/new/choose) or an existing one, as appropriate)
before you invest significant development time. If you mention your intent to implement the change described in your issue, the Policy team can, as best as possible,
prioritize including implementation-related feedback in the subsequent discussion.

At this time, we do not have a formal process for reviewing outside proposals that significantly change the Sentinel policy workflow,
its primary usage patterns, and its language. For large proposals that could entail a significant investment,
we wish to be up front with potential contributors that, unfortunately, we are unlikely to be able to give prompt feedback.
We are still interested in hearing about your use-cases so that we can consider ways to meet them as part of other larger projects.

Most changes will involve updates to the test suite, and changes to the policy library documentation.
The Policy team can advise on different testing strategies for specific scenarios,
and may ask you to revise the specific phrasing of your proposed documentation prose to match better with the standard "voice" of the documentation.

### Pull Request Lifecycle

1. You are welcome to submit a [draft pull request](https://github.blog/2019-02-14-introducing-draft-pull-requests/) for commentary or review before it is fully completed. It's also a good idea to include specific questions or items you'd like feedback on.
2. Once you believe your pull request is ready to be merged you can create your pull request.
3. When time permits the Policy team members will look over your contribution and either merge, or provide comments letting you know if there is anything left to do. It may take some time for us to respond. We may also have questions that we need answered about the code, either because something doesn't make sense to us or because we want to understand your thought process. We kindly ask that you do not target specific team members.
4. If we have requested changes, you can either make those changes or, if you disagree with the suggested changes, we can have a conversation about our reasoning and agree on a path forward. This may be a multi-step process. Our view is that pull requests are a chance to collaborate, and we welcome conversations about how to do things better. It is the contributor's responsibility to address any changes requested. While reviewers are happy to give guidance, it is unsustainable for us to perform the coding work necessary to get a PR into a mergeable state.
5. Once all outstanding comments and checklist items have been addressed, your contribution will be merged.
6. In some cases, we might decide that a PR should be closed without merging. We'll make sure to provide clear reasoning when this happens. Following the recommended process above is one of the ways to ensure you don't spend time on a PR we can't or won't merge.

#### Getting Your Pull Requests Merged Faster

It is much easier to review pull requests that are:

1. Well-documented: Try to explain in the pull request comments what your change does, why you have made the change, and provide instructions for how to produce the new behavior introduced in the pull request. If you can, provide screen captures or terminal output to show what the changes look like. This helps the reviewers understand and test the change.
2. Small: Try to only make one change per pull request. If you found two bugs and want to fix them both, that's *awesome*, but it's still best to submit the fixes as separate pull requests. This makes it much easier for reviewers to keep in their heads all of the implications of individual code changes, and that means the PR takes less effort and energy to merge. In general, the smaller the pull request, the sooner reviewers will be able to make time to review it.
3. Passing Tests: Based on how much time we have, we may not review pull requests which aren't passing our tests (look below for advice on how to run policy tests). If you need help figuring out why tests are failing, please feel free to ask, but while we're happy to give guidance it is generally your responsibility to make sure that tests are passing.

If we request changes, try to make those changes in a timely manner. Otherwise, PRs can go stale and be a lot more work for all of us to merge in the future.

Even with everyone making their best effort to be responsive, it can be time-consuming to get a PR merged. It can be frustrating to deal with the back-and-forth as we make sure that we understand the changes fully. Please bear with us, and please know that we appreciate the time and energy you put into improving this library.

### PR Checks

The following checks run when a PR is opened:

- Contributor License Agreement (CLA): If this is your first contribution to the library you will be asked to sign the CLA.
- Tests: tests exist for all policies contained in the library and all tests must pass before a PR can be merged.

----

## Sentinel Development Environment

If you wish to work on the source code for this library, you'll first need to [download](https://docs.hashicorp.com/sentinel/downloads) and [install](https://docs.hashicorp.com/sentinel/intro/getting-started/install) the Sentinel CLI and the version control system [Git](https://git-scm.com/).

At this time the Sentinel development environment is targeting only Linux and Mac OS X systems. While Sentinel itself is compatible with Windows, unfortunately the policy tests currently contain Unix-specific assumptions around maximum path lengths, path separators, etc.

Use Git to clone this repository into a location of your choice.

Switch into the root directory of the cloned repository and ensure that the Sentinel CLI is working as expected:

```
cd policy-library-cis-aws-rds-terraform
sentinel version
```

If you are planning to make changes to the library, you should run the Sentinel test suite before you start just to be sure that everything is initially passing:

```
make tests
```

The test suite for the library is self-contained, using Sentinel [mocks](https://docs.hashicorp.com/sentinel/writing/testing#mocking) and local files to help ensure that it can run offline and is unlikely to be broken by changes to outside systems. For now there are no components that interact with external services, and therefore there should be no need to mock any of the Sentinel standard library imports.