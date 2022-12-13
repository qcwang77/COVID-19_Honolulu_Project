# Data 512A Class Project

## About the Project

The Class Project have four main parts

- Part 1 - [Python Notebook](https://github.com/qcwang77/Data512ProjectRepository/blob/main/DocumentedCode/Part%201%20-%20Common%20Analysis.ipynb)  Common Analysis sets the stage for the subsequent assignments. In A4 you conduct a base analysis. All of the students in the class will conduct the same analysis, but with a slightly different data subset.
- Part 2 - Extension Plan will require you to ask a human centered data science question that extends the work in A4: Common Analysis. 
- Part 3 - Presentation will require you to give a modified (shorter) PechaKucha presentation of your completed project.
- Part 4 - [Python Notebook](https://github.com/qcwang77/Data512ProjectRepository/blob/main/DocumentedCode/Part%204%20-%20Data%20Processing.ipynb),  [Annotated R Code](https://github.com/qcwang77/Data512ProjectRepository/blob/main/DocumentedCode/Project%20Part4%20-%20Regression%20Analysis.R) Project Repository, creation of a fully documented repository and also requires the submission of a written project report.

## Documentations
- Part 1 [Reflection Statement](https://github.com/qcwang77/Data512ProjectRepository/blob/main/Part1Documentation/Reflection%20Statement.pdf)
- Part 1 [Visualization Explanation](https://github.com/qcwang77/Data512ProjectRepository/blob/main/Part1Documentation/Visualization%20Explanation.pdf)
- Part 2 [Extension Plan](https://github.com/qcwang77/Data512ProjectRepository/blob/main/Part1Documentation/Part%202%20-%20An%20Extension%20Plan.pdf)
- Part 4 [Data Source and Intermediate Data Files Document](https://github.com/qcwang77/Data512ProjectRepository/blob/main/Part1Documentation/Data%20Source%20and%20Intermediate%20Data%20Files%20Document.pdf)

## Data Sources

Six data sources are used in this project:

- Kaggle repository of John Hopkins University COVID-19 data [Link](https://www.kaggle.com/datasets/antgoldbloom/covid19-data-from-john-hopkins-university)
- The CDC dataset of masking mandates by county [Link](https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Public-Mask-Mandates-Fro/62d6-pm5i)
- The New York Times mask compliance survey data [Link](https://github.com/nytimes/covid-19-data/tree/master/mask-use)
- Social Distancing Index from University of Maryland [Link](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ZAKKCE)
- Oxford COVID-19 government response track [Link](https://github.com/GoogleCloudPlatform/covid-19-open-data/blob/main/docs/table-government-response.md)
- Daily Passenger Counts Hawaii.gov [Link](https://dbedt.hawaii.gov/visitor/daily-passenger-counts/international-passenger-counts/)

## License

- Kaggle repository of John Hopkins University COVID-19 data license by Attribution 4.0 International by [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- The CDC dataset of masking mandates by county data license by [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/)
- The New York Times mask compliance survey data [License](https://github.com/nytimes/covid-19-data/blob/master/LICENSE)
- Social Distancing Index from University of Maryland [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)
- Oxford COVID-19 government response track [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- Daily Passenger Counts Hawaii.gov [DCAT-US Schema v1.1](https://resources.data.gov/resources/dcat-us/)

## Intermediate data files

- Honolulu_dataset.csv
- Honolulu_dataset_delay2.csv
- Honolulu_dataset_delay4.csv
- Honolulu_dataset_delay7.csv
- Honolulu_dataset_delay14.csv
- Honolulu_dataset_tourist.csv

## Data Schema

| Name | Type | Description | Example |
| ---- | ---- | ----------- | ------- |
| **date** | `string` | ISO 8601 date (YYYY-MM-DD) of the datapoint | 2020-07-30 |
| **daily_confirmed_cases** | `integer` `[0-inf]` | Daily confired covid cases | 25 |
| **daily_passenger_arrivals** | `integer` `[0-inf]` | Daily confired covid cases | 15000 |
| **school_closing** | `integer` `[0-3]` | Schools are closed | 2 |
| **workplace_closing** | `integer` `[0-3]` | Workplaces are closed | 2 |
| **contact_tracing** | `integer` `[0-2]` | Country-wide contact tracing policy | 1 |
| **facial_coverings** | `integer` `[0-4]` | Policies on the use of facial coverings outside the home | 2 |
| **stringency_index** | `double` `[0-100]` | Overall stringency index | 71.43 |
| **SDI** | `integer` `[0-100]` | Overall stringency index | 54 |

## Graphical Outputs

Rate of Infections

![Rate of Infections](https://github.com/qcwang77/Data512ProjectRepository/blob/main/GraphicalOutpus/Rate%20of%20Infections.jpg)

Derivative Function of Rate of Infections

![Derivative Function of Rate of Infections](https://github.com/qcwang77/Data512ProjectRepository/blob/main/GraphicalOutpus/Derivative%20Function%20of%20Rate%20of%20Infections.jpg)

Histogram Of Daily Confirmed Cases

![Histogram Of Daily Confirmed Cases](https://github.com/qcwang77/Data512ProjectRepository/blob/main/GraphicalOutpus/Histogram%20Of%20Daily%20Confirmed%20Cases.JPG)

Correlation Heat Map

![Correlation Heat Map](https://github.com/qcwang77/Data512ProjectRepository/blob/main/GraphicalOutpus/Correlation%20Heat%20Map.JPG)

