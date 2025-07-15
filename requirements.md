# Requirements for chem QA/QC automation

## 1. Input data
Accept the follwing inputs:

- Samplemaster csv
	○ LTER data
	○ Project data
	○ QC (duplicates) data

## 2. Evaluation
Evaluate the datasets to flag for potential problem data:

- Timeseries outliers (group by year)
  - Local outliers (result high or results low, e.g. > 1 sigma more / less than next highest / lowest point in the local region)
    - May be complicated for parameters with pronounced annual cycles that are infrequently sampled (Could try regression or local interpolation methods)
    - Max time interval for sample comparisons (e.g. 1 month)

  - Sudden jumps
	  - e.g. if difference between 2 values in sequence > 2 sigma
   
- General outliers
  - Any value greater than 3 sigma from the mean
  
- Dissolved fraction
  - TDN should always be less than TIN (flag TDN > TIN)
  
- Field duplicates
  - If difference between duplicate samples is greater than (%? Parameter threshold?)
  
## 3. Outputs
Export the following files for chem team review:

- Table of flagged points to check for each input dataset 
- Plots with flagged and non-flagged data
