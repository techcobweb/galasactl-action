# galasactl-action
Github action for galasactl tool

## Syntax
To use the action within a workflow:

```
on: [push]

jobs:
  galasactl-version-job:
    runs-on: ubuntu-latest
    name: A job to invoke galasactl
    steps:
      - name: which version of galasactl are we using
        id: galasacrl-version
        uses: techcobweb/galasactl-action@v0.30.0
        with:
          galasactl-args: |
            - --version
```
Note: the galasactl-args is a list of arguments, which are all passed directly to the `galasactl` command as described in the https://galasa.dev documentation.


# Developing this action

## To publish a version of this action
```
git tag -a -m "v5" v5
git push --follow-tags
```