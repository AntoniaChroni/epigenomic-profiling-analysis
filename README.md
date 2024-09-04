# epigenomic-profiling-analysis

The `epigenomic-profiling-analysis` will accommodate analysis for epigenetic profiling using CUT&RUN-seq data. The main objectives of this repository are the exploration of patterns of different members of a protein complex overall but also looking into patterns of specific members being co-recruited to promoters (or bivalent promoters), enhancers, super enhancers, intergenic regions etc.


## To reproduce the code in this repository:
This repository contains the code used to conduct analyses for the manuscript noted above.

1. Clone the repository
```
git clone https://github.com/stjudeDNBBinfCore/epigenomic-profiling-analysis.git
```

2. Navigate to an analysis module and run the shell script:
```
cd $(dirname "${BASH_SOURCE[0]}")/epigenomic-profiling-analysis/analyses/module_of_interest
```

### Below is the main directory structure listing the analyses and data files used in this repository

```
├── analyses
|  ├── create-project-metadata
|  └── peak-calling-analysis
├── figures
|  └── img
|      └── DNB-BINF-Core-logo.png
├── gitignore.txt
├── LICENSE
├── project_parameters.Config.yaml
└── README.md
```


## Code Authors

Antonia Chroni ([@AntoniaChroni](https://github.com/AntoniaChroni))

## Contact

For questions, please submit an issue.
