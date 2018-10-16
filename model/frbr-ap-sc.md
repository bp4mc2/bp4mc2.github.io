# FRBR Toepassingsprofiel voor bronbeschrijvingen


FRBR is de standaard om te kunnen verwijzen naar een bibliografische bron (bijvoorbeeld een wetsartikel) in het algemeen of een versie van een bron zoals dat op een bepaald moment geldig was. Formele begrippen worden meestal gedefinieerd in een besluit of een wet. Bij verwijzing naar zo’n begrip is het belangrijk om te weten of naar dat begrip in het algemeen of naar een beschrijving van dat begrip op een specifiek moment wordt verwezen.

Het FRBR toepassingsprofiel maakt het mogelijk te verwijzen naar:
* een document dat direct vindbaar is op het web, bijvoorbeeld een wikipedia pagina. Voor een stabiele verwijzing kan het handig zijn om te verwijzen naar een specifieke versie, zoals deze beschikbaar was op het moment dat de verwijzing is aangebracht.
* een bibliografische beschrijving, zonder dat het document zelf vindbaar is op het web. Indien het document wel vindbaar is, dan kan deze verwijzing ook opgenomen worden. Bibliografische beschrijvingen kennen we in twee vormen:
  * een beschrijving van het werk, zonder dat daarbij wordt verwezen naar een specifieke versie van dit werk, bijvoorbeeld "De grondwet";
  * een beschrijving van een versie van het werk, de "expressie". Bijvoorbeeld "De grondwet, zoals geldig op 17 november 2017".


![](frbr-ap-sc.png)

## Document

|Eigenschap|Waarde
|----------|------
|Label|Document
|Uitleg|Een document dat vindbaar is op het web.
|Voorbeeld|[https://wetten.overheid.nl/BWBR0001840/2017-11-17](https://wetten.overheid.nl/BWBR0001840/2017-11-17)
|Eigenschappen en relaties|[label](http://bp4mc2.org/profiles/frbr-ap-sc#Document_label)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Uitleg|Een document heeft een voor mensen leesbaar label.
|Voorbeeld|Grondwet
|Min card.|1


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


