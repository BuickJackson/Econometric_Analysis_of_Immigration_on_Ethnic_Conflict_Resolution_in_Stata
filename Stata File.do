* Econometric Analysis of the Impact of Immigration on Ethnic Conflict Resolution in Northern Ireland
* Contributors : Jackson Buick


* First we use Old LGDs:

use "Data\OldLGDs.dta", clear


* Create the district fixed effects variables
tabulate District, gen(District)

* Run simple regression of Murders on Immigration
regress Murders Immigration, robust

* Run regression of Murders on Immigration with time fixed effects
regress Murders Immigration Year, robust

* Run regression of Murders on Immigration with district fixed effects
regress Murders Immigration District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25, robust

* Run regression of Murders on Immigration with time and district fixed effects
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25, robust


* Holy shit it worked! Let's add in Density Control
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 Density, robust

* Now let's try education levels
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 Educated1 Educated2 Educated3 Educated4, robust 

* Now let's try Ratio Control
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 Ratio, robust

* Unemployment Ratio
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 UnemploymentRatio, robust

* Now all density, education, and ratio
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 Density Educated1 Educated2 Educated3 Educated4 Ratio, robust

* Now all density, education, and UnemploymentRatio
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 District11 District12 District13 District14 District15 District16 District17 District18 District19 District20 District21 District22 District23 District24 District25 Density Educated1 Educated2 Educated3 Educated4 UnemploymentRatio, robust



* Now we look to New LGDs:

use "Data\NewLGDs.dta", clear


* Create the district fixed effects variables
tabulate District, gen(District)

* Run simple regression of Murders on Immigration
regress Murders Immigration, robust

* Run regression of Murders on Immigration with time fixed effects
regress Murders Immigration Year, robust

* Run regression of Murders on Immigration with district fixed effects
regress Murders Immigration District1 District2 District3 District4 District5 District6 District7 District8 District9 District10, robust

* Run regression of Murders on Immigration with time and district fixed effects
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10, robust


* Wow that one worked too! Let's throw in Density now
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 Density, robust

* Now let's try GDP
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 GDP, robust

* Now let's do education levels
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 Educated1 Educated2 Educated3 Educated4

* Now ratio
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 Ratio, robust

* Now UnemploymentRatio
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 UnemploymentRatio, robust

* Now do the four
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 Density GDP Educated1 Educated2 Educated3 Educated4 Ratio, robust

* And finally
regress Murders Immigration Year District1 District2 District3 District4 District5 District6 District7 District8 District9 District10 Density GDP Educated1 Educated2 Educated3 Educated4 UnemploymentRatio
