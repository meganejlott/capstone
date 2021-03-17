*Abstract* 

Habitat conservation has emerged as a national and international priority. Though intended to preserve wildlife biodiversity, land conservation practices have been found to have mixed effects on the transmission of infectious diseases in wildlife. In this investigation, we utilized the Global Mammal Parasite Database to examine patterns of parasitism associated with land protection practices. Results suggest that parasite diversity is significantly greater for hosts observed on non-protected lands. Within protected lands, parasite diversity decreases with increasing land cover. However, parasite prevalence does not differ between land protection practices.  

*Question* 

How does parasitism compare between mammalian hosts populations that are established on and off of protected lands?

*Approach*

1. Examine parasitism between mammal species on and off of protected lands, by parasite diversity and prevalence. 

2. Examine parasitism of major families of mammals: great apes (and plasmodium), deer (and ticks).

3. Utilize social networks to examine parasite sharing within and between hosts on and off of protected lands. 

4. Compare parasite diversity and prevalence between protected areas of different sizes. 

5. Control for "frequency of frequency" data by using Chao-2 Estimates
Data Sets: Global Mammal Parasite Database (GMPD) Protected Land Data from the International Union for Conservation of Nature (IUCN): Location, Area, Preservation Classification Protected Lands Survey Results: Species Counts, Human Density & Impact, Demographic Information

*How-To* 

1. Run the "create_shp.R" script to generate simple sf from the IUCN database and GMPD database. 

2. Run the "gmpd_parasitism.RMD" script to evaluate parasitism on and off of protected lands. This script will compare the GMPD data to the IUCN data to designate observations as recorded on protected lands or on non-protected lands. The script will then evaluate parasite diversity for mammalian hosts well-studied on protected and non-protected lands. 