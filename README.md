# Platform workflows

Reusable GitHub Actions for Braced Labs services. Call these from the service repository. Do not copy the jobs.

Pinning: service repos currently call `@main`. Platform tests backwards compatibility before merge. If you need a rollback, revert on `main`. SHA pins are on the backlog (see the pinning issue).

## Node CI

```yaml
jobs:
  test:
    uses: bracedlabs2/platform-workflows/.github/workflows/node-ci.yml@main
    with:
      node-version: "20"
```

## Deploy

```yaml
jobs:
  deploy:
    uses: bracedlabs2/platform-workflows/.github/workflows/deploy-service.yml@main
    with:
      service: payments-api
      environment: staging
      artifact-name: payments-api-${{ github.sha }}
    secrets: inherit
```

`secrets: inherit` is required so the reusable workflow can reach the deployment API. Named-secret plumbing is a follow-up.

## Workflow contributions

Incoming pull requests, including forks, run **Fork Contribution Preview**. That job checks out the proposed branch so reviewers can see whether a contributed workflow parses. Approval for first-time contributors follows this repository's own fork-PR setting, which is independent of the organization default.
