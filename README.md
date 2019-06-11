### Flux Sampling to Study Metabolic Networks 

In the folder *ComparingAlgorithms* we present an analysis pipeline for comparing the three flux sampling algorithms (CHRR, OPTGP, and ACHR) available in the [COBRA Toolbox](https://opencobra.github.io/cobratoolbox/stable/) (MATLAB) and [COBRApy](https://cobrapy.readthedocs.io/en/latest/) (Python). 

We assess the algorithms' efficiency across three published biological networks: [Arnold2014](https://www.ncbi.nlm.nih.gov/pubmed/24808102), [Poolman2009](http://www.plantphysiol.org/content/151/3/1570), [Gomes2010](http://www.plantphysiol.org/content/152/2/579) as included in the folder. 

We compare the three algorithms based on **runtime** (`Sampling_OPTGP_ACHR.ipynb`, `Sampling_CHRR.m`) and **convergence** (`assessConvergence.m`, `ConvergenceDiagnostics.ipynb`). 
The `assessConvergence.m` assesses convergence in the sampling chains based on the [interval-based potential scale reduction factor](http://www.stat.columbia.edu/~gelman/research/published/brooksgelman2.pdf) whereas the `ConvergenceDiagnostics.ipynb` assesses convergence in the sampling chains based on the [Raftery and Lewis Diagnostic](https://pdfs.semanticscholar.org/0daf/54c4b59fd2c362de822de0ffdab84f49c6fd.pdf) and the [Gweke diagnostic](https://pdfs.semanticscholar.org/2e86/50b01dd557ffb15113c795536ea7c6ab1088.pdf). 


### Flux Sampling to Study Plant Acclimation to Cold 

We then constrained the [Arnold2014](https://www.ncbi.nlm.nih.gov/pubmed/24808102) model with photosynthesis and metabolite data of plants grown at control conditions and of plants which had recevied one week of cold treatment at maturity. `ExpData.xlsx` contains the raw data which is analysed and summarized using the `ExpData.R` file. In-cabinet photosynthesis measurements and metabolites assays were done as outlined [here](https://www.ncbi.nlm.nih.gov/pubmed/27440755).

Photosynthesis constraints were converted from area to FW measurements and scaled to a constant flux over an 8 h photoperiod. Constraints were applied to the genome-scale metabolic model of Arnold2014 as done in `ColdAcclimationModels.ipynb` and sampling was done using the CHRR algorithm (`ArabidopsisSampling.m`). Flux distributions were then plotted to a PDF file (`FluxSamplingAnalysisArabidopsis.ipynb`). 

All scripts for this analysis can be found in the *ArabidopsisStudy* folder. 

### DOI
Our most recent Zenodo DOI generate for the journal submission is: 

https://doi.org/10.5281/zenodo.3239075 

### Contact
- helena.herrmann@manchester.ac.uk 
- jean-marc.schwartz@manchester.ac.uk
