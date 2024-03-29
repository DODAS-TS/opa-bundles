## Use the HERD bundle in OPA

Example of an OPA `config.yaml`:

```yaml
services:
  - name: example-repo
    url: https://dodas-ts.github.io/opa-bundles/

bundles:
  authz:
    service: herd-repo
    resource: HERD-bundle.tar.gz
    persist: true
    polling:
      min_delay_seconds: 10
      max_delay_seconds: 20
```

Then run OPA with:

```bash
opa run -s -c config.yaml
```

## Github Actions automation

At each tag and push to main branch, a GH action is triggered and it automatically test and push the updated bundle on the Githubpages of this repo. From there it is then fetched by the opa server