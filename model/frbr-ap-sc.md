# FRBR Toepassingsprofiel voor bronbeschrijvingen


FRBR is de standaard om te kunnen verwijzen naar een bibliografische bron (bijvoorbeeld een wetsartikel) in het algemeen of een versie van een bron zoals dat op een bepaald moment geldig was. Formele begrippen worden meestal gedefinieerd in een besluit of een wet. Bij verwijzing naar zo’n begrip is het belangrijk om te weten of naar dat begrip in het algemeen of naar een beschrijving van dat begrip op een specifiek moment wordt verwezen.

Het FRBR toepassingsprofiel maakt het mogelijk te verwijzen naar:
* een beschrijving van een document dat zelf niet vindbaar is op het web, bijvoorbeeld een boek. De beschrijving van het boek is wel vindbaar, het boek zelf met de inhoud niet.
* een bibliografische bron op het web, waarvan de inhoud direct via het web beschikbaar is, een web’resource’. Een verwijzing naar een dergelijke bron kan twee vormen hebben:
** de verwijzing naar de beschrijving in het algemeen
** de verwijzing naar een specifieke versie van de beschrijving zoals die op een bepaald moment geldig was.


![](frbr-ap-sc.png)

## Brondocument


## Werk als bron

|Eigenschap|Waarde
|----------|------
|Label|algemeen bibliografische bron
|Klasse|[frbr:Work](http://purl.org/vocab/frbr/core#Work)
|Uitleg|Een via het web identificeerbare bibliografische bron, zonder dat expliciet wordt verwezen naar een specifieke versie.
|Voorbeeld|Artikel 1 van het Burgerlijk Wetboek


## Expressie als bron

|Eigenschap|Waarde
|----------|------
|Label|versie bibliografische bron
|Klasse|[frbr:Expression](http://purl.org/vocab/frbr/core#Expression)
|Uitleg|Een specifieke versie van een op het web identificeerbare bibliografische bron.
|Voorbeeld|Artikel 1 van het Burgerlijk Wetboek van 1838


## Uri strategie


Een brondocument, bron op het web, werk als bron, respectievelijk expressie als bron krijgt een uri volgens het patroon:

* http://{domain}/id/{SourceDocument}/{UpperCamelCase(rdfs:Label)} voor een brondocument
* http://{domain}/id/{Source}/{UpperCamelCase(rdfs:Label)} voor een bibliografische bron op het web
* http://{domain}/id/{WorkAsSource}/{UpperCamelCase(rdfs:Label)} voor een algemeen bibliografische bron op het web
* http://{domain}/id/{ExpressionAsSource}/{UpperCamelCase(rdfs:Label)} voor een specifieke versie van een bibliografische bron op het web


