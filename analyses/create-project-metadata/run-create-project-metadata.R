#################################################################################
# This will run all scripts in the `sample-distribution-analysis`
#################################################################################
# Load library
suppressPackageStartupMessages({
  library(yaml)
  library(tidyverse)
  })

#################################################################################
# Set up directories and paths to root_dir and analysis_dir
root_dir <- file.path("./GitHub/epigenomic-profiling-analysis")
analysis_dir <- file.path(root_dir, "analyses", "create-project-metadata")
report_dir <- file.path(analysis_dir, "results") 
#################################################################################
# load config file
configFile <- paste0(root_dir, "/","project_parameters.Config.yaml")
if (!file.exists(configFile)){
  cat("\n Error: configuration file not found:", configFile)
  stop("Exit...")
}
yaml <- read_yaml(configFile)

################################################################################################################
# Run Rmd scripts 
################################################################################################################
rmarkdown::render('01-create-project-metadata.Rmd', clean = FALSE,
                              output_dir = file.path(report_dir),
                              output_file = c(paste('Report-', 'create-project-metadata', '-', Sys.Date(), sep = '')),
                              output_format = 'all',
                              params = list(
                                # the following parameters are defined in the `yaml` file
                                 data_dir = yaml$data_dir,
                                 PROJECT_NAME = yaml$PROJECT_NAME,
                                 PI_NAME = yaml$PI_NAME,
                                 TASK_ID = yaml$TASK_ID,
                                 PROJECT_LEAD_NAME = yaml$PROJECT_LEAD_NAME,
                                 DEPARTMENT = yaml$DEPARTMENT,
                                 LEAD_ANALYSTS = yaml$LEAD_ANALYSTS,
                                 GROUP_LEAD = yaml$GROUP_LEAD,
                                 CONTACT_EMAIL = yaml$CONTACT_EMAIL,
                                 PIPELINE = yaml$PIPELINE, 
                                 START_DATE = yaml$START_DATE,
                                 COMPLETION_DATE = yaml$COMPLETION_DATE))

################################################################################################################
