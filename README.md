# CODE CHECK Paper

**https://codecheck.org.uk/**

## Edit the paper

You can edit the paper in RStudio with [`repo2docker`](https://repo2docker.readthedocs.io) and use the `--editable` option to edit the files mounted into the container from this directory.
_The `repo2docker` option is the only way the original authors worked on the article to ensure the authoring environment is fully controlled._
You can most easily achieve it using the included `Makefile`, just run

```bash
make edit
```
