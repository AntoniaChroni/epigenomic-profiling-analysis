# Pipeline for creating project metadata for nf-core/RNA-seq Analysis

## Usage

To run the script in this module from the command line sequentially, use:

```
bash run-create-project-metadata.sh
```

`run-create-project-metadata.sh` is designed to be run as if it was called from this module directory even when called from outside of this directory.

Parameters according to the project and analysis strategy will need to be specified in the following scripts:
- `project_parameters.Config.yaml` located at the `root_dir`: define `data_dir` and overall project parameters
- `run-create-project-metadata.R`: define `root_dir`


## Folder content
This folder contains a script tasked to create project metadata for the project. The output file generated here can be used as an input file to run [nf-core/RNA-seq](https://nf-co.re/rnaseq/3.14.0) pipeline.

We provide an example for the `project-metadata.tsv`.

## Folder structure 

The structure of this folder is as follows:

```
├── 01-create-project-metadata.knit.md
├── 01-create-project-metadata.Rmd
├── README.md
├── Report-create-project-metadata_<Sys.Date()>.log
├── results
|   ├── project-metadata.tsv
|   ├── Report-create-project-metadata_<Sys.Date()>.html
|   └── Report-create-project-metadata_<Sys.Date()>.pdf
├── run-create-project-metadata.R
└── run-create-project-metadata.sh
```

