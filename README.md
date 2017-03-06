# Cologne Open Data API

An API wrapper to query the Cologne (Germany) open data ressources.

## Installation

Install from the source code available at github with the following
commands in any R console:

```R
install.packages("devtools")
devtools::install_github("CologneOpenData/CologneOpenDataAPI.R")
```

## Usage

After installation, load the package, read the documentation and get
started with the following commands:

```R
library(CologneOpenDataAPI)
?CologneOpenDataAPI
```

Query the available data packages:

```R
p <- get_packages()
head(p)
# [1] "baumkataster-koeln"                  "sperrzone-lkw-karneval-koeln-2017"
# [3] "karneval-koeln-2017"                 "bandbreitenuebersicht-schulen-koeln"
# [5] "monitoring-offene-daten-koeln-2016"  "statistik-ordungsamt-koeln-2016"
```

Show available data package resources (datasets):

```R
i <- get_package_info("karneval-koeln-2017")
head(resources(i)$name)
# [1] "Rosenmontagszug Koeln 2017"          "Rosenmontagszug Koeln 2017"         
# [3] "Schulzug Koeln 2017"                 "Schulzug Koeln 2017"                
# [5] "Glasfreie Zonen Karneval Koeln 2017" "Glasfreie Zonen Karneval Koeln 2017"
```

Query data:

```R
query_data() # not yet implemented - to be added soon!
```

## Legal

> Copyright (C) 2017 - Sven E. Templer
>
> See file `LICENSE`.

