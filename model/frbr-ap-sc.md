# Bronverwijzingen


Bronverwijzingen


![](frbr-ap-sc.png)

## Brondocument

|Eigenschap|Waarde
|----------|------
|Label|Brondocument
|Uitleg|A source document that can be found on the web., Een brondocument dat vindbaar is op het web.
|Voorbeeld|De volledige tekst van het Burgerlijk Wetboek.
|Eigenschappen|[label](http://bp4mc2.org/profiles/frbr-ap-sc#SourceDocument_label)


## Bron

|Eigenschap|Waarde
|----------|------
|Label|beschrijvende bron
|Klasse|[frbr:Endeavour (source)](http://purl.org/vocab/frbr/core#Endeavour)
|Uitleg|Een via het web identificeerbare beschrijvende bron.
|Voorbeeld|Atrikel 1 van het burgerlijk wetboek of atrikel 1 van het burgerlijk wetboek van 1838
|Eigenschappen|[onderwerp van](http://bp4mc2.org/profiles/frbr-ap-sc#Source_isTopicOf), [label](http://bp4mc2.org/profiles/frbr-ap-sc#Source_label)


## Werk als bron

|Eigenschap|Waarde
|----------|------
|Label|algemeen beschrijvende bron
|Klasse|[frbr:Work (source)](http://purl.org/vocab/frbr/core#Work)
|Uitleg|Een via het web identificeerbare beschrijvende bron, zonder dat expliciet wordt verwezen naar een specifieke versie.
|Voorbeeld|Artikel 1 van het Burgerlijk Wetboek


## Expressie als bron

|Eigenschap|Waarde
|----------|------
|Label|versie beschrijvende bron
|Klasse|[frbr:Expression (source version)](http://purl.org/vocab/frbr/core#Expression)
|Uitleg|Een specifieke versie van een op het web identificeerbare beschrijvende bron.
|Voorbeeld|Artikel 1 van het Burgerlijk Wetboek van 1838


## Uri strategie


Concept schema’s, collecties en concepten krijgen een uri volgens het patroon:

* http://{domain}/id/{ConceptScheme}/{UpperCamelCase(rdfs:label)} voor begrippenkaders
* http://{domain}/id/{Collection}/{UpperCamelCase(rdfs:label)} voor collecties
* http://{domain}/id/{Concept}/{UpperCamelCase(skos:prefLabel)} voor concepten

Good practice is om binnen een domein (begrippenkader) alle prefLabels uniek te maken. Soms is het daarbij nodig de context te vermelden. Dit gebeurt dan tussen haakjes, bijvoorbeeld ‘breedteklasse (wegdeel)’ en ‘breedteklasse (waterdeel)’. Als dit niet gebeurt zijn uri’s niet voorspelbaar op basis van het prefLabel en moeten ze handmatig worden toegekend.
