[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2648326.svg)](https://doi.org/10.5281/zenodo.2648326)

# Data Management Plan - Data Experiment

Exercise project for Data Stewardship 2019
DMP - Data Management Plan

To build the Docker container, use a command like this:
```
docker build -t dmp-experiment .
```
where `dmp-experiment` can be replaced with a tag of your choice.

To run the experiment, provide a folder for the output, and
use a command like this:
```
docker run -v $PWD/data:/data -v /folder-for-output:/output dmp-experiment
```
where `/folder-for-output` should be replaced with the absolute
path of the folder created for output, `$PWD/data` is the folder
where the (raw) data is available, and `dmp-experiment`
is the tag used when building the container.
