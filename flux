use "/Users/antoinejardinantoine/Desktop/modpro.dta"

## Expansion de la matrice
expand ipondi

## Génère les flux
egen flux = concat( commune dclt) , punct(_)

## Taille pop origine
bysort  commune : gen n_orig = _N

## Taille pop arrivée
bysort  dclt : gen n_arriv = _N

## Taille pop flux
bysort  flux : gen n_flux = _N

## % des flux origines et arrivés
gen pflux_orig =  (n_flux /  n_orig) * 100
gen pflux_arriv =  (n_flux /  n_arriv) * 100

# Futur

## Prendre des pondérations complètes et non arrondies.
