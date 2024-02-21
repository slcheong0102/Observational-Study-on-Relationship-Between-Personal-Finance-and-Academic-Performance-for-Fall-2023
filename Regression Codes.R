# ----- Set-up -----
# Cleaning the environment
rm(list=ls())

# install.packages("tidyverse") # Use this command if tidyverse is not loaded in R.
library(tidyverse)
library(stringr)
library(readxl)


# Loading the survey responses
survey <- read_excel("C:/Users/soulu/OneDrive - University of Toronto/University of Toronto/UTM 2021-2023/7_2023 Fall/STA304H5F/Course Project/STA304_output.xlsx")


# 1. CGPA = B0 + B1*international + B2*total_expenditure + error
# Step 1: Create a new variable "total_expenditure"
survey$total_expenditure = survey$monthly_expendture + survey$tuition_fee

