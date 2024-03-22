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
        uses: techcobweb/galasactl-action@v6
        with:
          galasactl-args: |
            - --version
```
Note: the galasactl-args is a list of arguments, which are all passed directly to the `galasactl` command as described in the https://galasa.dev documentation.


# Developing this action

## To publish a version of this action
```
export VERSION="1" && git push --delete origin "v$VERSION" && git tag -fa -m "v$VERSION" "v$VERSION" && git push --follow-tags 
```

## To delete a tag you previously created
```
export VERSION="1" && git push --delete origin "v$VERSION"
```