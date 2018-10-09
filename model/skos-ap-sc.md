# SKOS Toepassingsprofiel voor begrippenkaders


Begrippen maken duidelijk welke ‘onderwerpen van gesprek’ er bestaan. In een stelselcatalogus worden begrippen formeel gedefinieerd, waarbij iedere definitie wordt opgebouwd volgens strikte regels. De essentie is dat elk begrip in een bepaald domein wordt uitgelegd in termen van andere begrippen. Ook die begrippen worden uitgelegd totdat uiteindelijk elk begrip wat uitleg nodig heeft is gedefinieerd. Uiteindelijk blijven de begrippen over waarvan de betekenis als vanzelfsprekend wordt aangenomen. In een logisch model worden dit axioma's genoemd. Zo ontstaat per domein een axiomatisch begrippenkader. Dit begrippenkader kan worden beschouwd als een min of meer geformaliseerde beschrijving van de institutionele werkelijkheid van het domein.

Voor het beschrijven van begrippen wordt SKOS gebruikt. SKOS staat in Nederland op de pas-toe-leg-uit lijst voor overheden.

* Ieder begrip wordt gerepresenteerd door een skos:concept.
* Ieder domein heeft zijn eigen begrippenkader. Het begrippenkader voor een bepaald domein wordt gerepresenteerd door een skos:ConceptScheme.
* Begrippen kunnen worden geordend in collecties. Een collectie wordt gerepresenteerd door een skos:collection.
* Begrippen in verschillende domeinen kunnen worden verbonden via matching mechanismes. Door deze verbinding van begrippen tussen domeinen ontstaat een stelsel van samenhangende begrippenkaders. Dit stelsel van samenhangende begrippenkaders kan worden gezien als de kennisbasis voor een stelselcatalogus.


![](skos-ap-sc.png)

## Begrippenkader

|Eigenschap|Waarde
|----------|------
|Label|Begrippenkader
|Klasse|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)
|Uitleg|De kennis over de fysieke werkelijkheid wordt beschreven in een talig model, een begrippenmodel.  In een begrippenmodel wordt deze kennis zodanig gestructureerd vastgelegd dat deze door zowel mensen als door computers wordt begrepen.
|Voorbeeld|De thesaurus of taxonomie met alle begrippen in het Kadastrale domein. Deze begrippen vinden hun oorsprong in de Kadasterwet, die beschrijft wat percelen en rechten daarop betekenen.
|Eigenschappen|[top concept](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_hasTopConcept), [label](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_label)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Uitleg|Een begrippenkader heeft een voor mensen leesbare naam. Spaties en diacritische tekens zijn  toegestaan.
|Voorbeeld|Het schema dat het domein regelgeving beschrijft heeft als label 'Regelgeving'.
|Min card.|1


### Relaties

|Eigenschap|Waarde
|----------|------
|Label|top concept
|Eigenschap|[skos:hasTopConcept](http://www.w3.org/2004/02/skos/core#hasTopConcept)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een concepten schema kan concepten bevatten die die het meest generiek zijn in een hiërarchie van specialisaties/generalisaties.
|Voorbeeld|Het concept 'Zakelijk recht' als meest generieke concept voor 'Eigendom', 'Opstal', 'Erfpacht', etc.


## Begrip

|Eigenschap|Waarde
|----------|------
|example|het begrip 'Perceel' in de BRK
|Label|Begrip
|Klasse|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip is een idee of notitie, een eenheid van denken, een onderwerp van gesprek.
|Eigenschappen|[lijkt op breder](http://bp4mc2.org/profiles/skos-ap-sc#Concept_broadlyMatches), [vergelijkbaar met](http://bp4mc2.org/profiles/skos-ap-sc#Concept_closelyMatches), [uitleg](http://bp4mc2.org/profiles/skos-ap-sc#Concept_comment), [bestaat uit](http://bp4mc2.org/profiles/skos-ap-sc#Concept_consistsOf), [geschreven bron](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dcsource), [bron op het web](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dctsource), [definitie](http://bp4mc2.org/profiles/skos-ap-sc#Concept_definition), [domein](http://bp4mc2.org/profiles/skos-ap-sc#Concept_domain), [redactionele opmerking](http://bp4mc2.org/profiles/skos-ap-sc#Concept_editorialNote), [exact gelijk aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_exactlyMatches), [generalisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_generalisationOf), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_isRelatedTo), [label (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_label), [herkomst (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_metadata), [lijkt op smaller](http://bp4mc2.org/profiles/skos-ap-sc#Concept_narrowlyMatches), [onderdeel van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_partOf), [voorkeursterm](http://bp4mc2.org/profiles/skos-ap-sc#Concept_prefLabel), [herkomst (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_provenance), [toelichting](http://bp4mc2.org/profiles/skos-ap-sc#Concept_scopeNote), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_seeAlso), [specialisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_specialisationOf), [alternatieve aanduiding](http://bp4mc2.org/profiles/skos-ap-sc#Concept_synonym)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|uitleg
|Eigenschap|[rdfs:comment](http://www.w3.org/2000/01/rdf-schema#comment)
|Uitleg|Een begrip heeft bij voorkeur een uitleg in ‘klare taal’.
|Voorbeeld|Een perceel is een stuk grond waarvan het Kadaster de grenzen heeft gemeten en dat bij het Kadaster een eigen nummer heeft.
|Min card.|1

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|geschreven bron
|Eigenschap|[dc:source](http://purl.org/dc/elements/1.1/source)
|Uitleg|Een begrip is ontleend aan een geschreven bron.
|Voorbeeld|Europees verdrag voor de rechten van de mens

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|definitie
|Eigenschap|[skos:definition](http://www.w3.org/2004/02/skos/core#definition)
|Uitleg|Een begrip kan een formele definitiehebben. Deze wordt waar mogelijk overgenomen uit een officiële publicatie.
|Voorbeeld|Een perceel is een begrensd deel van het Nederlands grondgebied dat kadastraal geïdentificeerd is en met kadastrale grenzen begrensd is.
|Min card.|1

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|redactionele opmerking
|Eigenschap|[skos:editorialNote](http://www.w3.org/2004/02/skos/core#editorialNote)
|Uitleg|Een begrip kan een redactionele opmerking hebben.
|Voorbeeld|Dit begrip wordt nog gewijzigd bij het invoeringsbesluit.

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|label (begrip)
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Uitleg|Een begrip wordt aangeduid met een voor mensen leesbare term (inclusief spaties en diacrieten). Deze is gelijk aan het skos:prefLabel. Uitzondering hierop is de situatie dat binnen 1 conceptschema er vaker dezelfde skos:prefLabel wordt gebruikt. Dit is geen good practice en dient zoveel mogelijk voorkomen te worden. In het geval dat dit toch voorkomt, krijgt het rdfs:label een toevoeging tussen haakjes die het onderscheid aangeeft. Dit label kan meertalig zijn, aangegeven door @nl of @en
|Voorbeeld|"Kadastraal perceel"@nl / "Cadastral parcel"@en
|Min card.|1

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|voorkeursterm
|Eigenschap|[skos:prefLabel](http://www.w3.org/2004/02/skos/core#prefLabel)
|Uitleg|Een begrip heeft een voor mensen leesbare voorkeursterm. Er is precies 1 voorkeursterm in de voorkeurstaal (dit veld is dus niet meertalig). Het is een good practice dat ieder begrip binen 1 begrippenkader een uniek prefLabel heeft.
|Voorbeeld|Kadastraal perceel
|Min card.|1
|Max card.|1

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|toelichting
|Eigenschap|[skos:scopeNote](http://www.w3.org/2004/02/skos/core#scopeNote)
|Uitleg|Een begrip kan nader worden toegelicht.
|Voorbeeld|Een perceel is een (2D) vlakvormig ruimtelijk object dat "opdelend" van structuur is. Dit betekent dat Nederland altijd naadloos en volledig is bedekt met perceelsvlakken, die elkaar niet mogen overlappen.

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|alternatieve aanduiding
|Eigenschap|[skos:altLabel](http://www.w3.org/2004/02/skos/core#altLabel)
|Uitleg|Een begrip kan een alternatieve aanduiding, een synoniem hebben
|Voorbeeld|KadastraalPerceel


### Relaties

|Eigenschap|Waarde
|----------|------
|Label|lijkt op breder
|Eigenschap|[skos:broadMatch](http://www.w3.org/2004/02/skos/core#broadMatch)
|Relatie met|[Extern begrip](http://bp4mc2.org/profiles/skos-ap-sc#ExternalConcept)
|Uitleg|Een begrip kan een specialisatie zijn van een begrip in een ander domein.
|Voorbeeld|Een Appartementsrecht in de BRK is een specialisatie van een Verblijfsobject in de BAG.

|Eigenschap|Waarde
|----------|------
|Label|vergelijkbaar met
|Eigenschap|[skos:closeMatch](http://www.w3.org/2004/02/skos/core#closeMatch)
|Relatie met|[Extern begrip](http://bp4mc2.org/profiles/skos-ap-sc#ExternalConcept)
|Uitleg|Een begrip kan bijna hetzelfde betekenen als een begrip in een ander domein.
|Voorbeeld|Een OnroerendGoed in de BRK is ongeveer hetzelfde als een WOZobject in de WOZ.

|Eigenschap|Waarde
|----------|------
|Label|bestaat uit
|Eigenschap|[skosthes:narrowerPartitive](http://purl.org/iso25964/skos-thes#narrowerPartitive)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip kan kan gaan over een aantal onderdelen.
|Voorbeeld|Een schip bestaat uit een romp, kajuit, motor, ...

|Eigenschap|Waarde
|----------|------
|Label|bron op het web
|Eigenschap|[dcterms:source](http://purl.org/dc/terms/source)
|Uitleg|Een begrip kan zijn ontleend aan een op het web vindbare bron. Dit kan een (versie van) een beschrijving van een specifiek begrip of een document waarin een beschrijving van het begrip is te vinden.
|Voorbeeld|<jci1.3:c:BWBR0005416&titel=IV&hoofdstuk=XV&paragraaf=3&artikel=222>

|Eigenschap|Waarde
|----------|------
|Label|domein
|Eigenschap|[skos:inScheme](http://www.w3.org/2004/02/skos/core#inScheme)
|Verwijst naar|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)
|Uitleg|Een begrip is gedefinieerd in de context van een bepaald domein.
|Voorbeeld|Basisregistratie Adressen en Gebouwen (BAG)
|Min card.|1
|Max card.|1

|Eigenschap|Waarde
|----------|------
|Label|exact gelijk aan
|Eigenschap|[skos:exactMatch](http://www.w3.org/2004/02/skos/core#exactMatch)
|Relatie met|[Extern begrip](http://bp4mc2.org/profiles/skos-ap-sc#ExternalConcept)
|Uitleg|Een begrip kan precies hetzelfde betekenen als een begrip in een ander domein.
|Voorbeeld|Een Perceel in het BAL betekent hetzelfde als een Perceel in de BRK.

|Eigenschap|Waarde
|----------|------
|Label|generalisatie van
|Eigenschap|[skosthes:narrowerGeneric](http://purl.org/iso25964/skos-thes#narrowerGeneric)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip kan een generalisatie zijn van een begrip met een engere of nauwere betekenis.
|Voorbeeld|Een KadastraalObject is een OnroerendGoed of een Registergoed.

|Eigenschap|Waarde
|----------|------
|Label|gerelateerd aan
|Eigenschap|[skos:semanticRelation](http://www.w3.org/2004/02/skos/core#semanticRelation)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip kan gerelateerd zijn aan een ander begrip.
|Voorbeeld|Een perceel is gerelateerd aan KadastraleGrens.

|Eigenschap|Waarde
|----------|------
|Label|herkomst (begrip)
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[http://www.w3.org/ns/prov#Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een begrip kan de herkomst, geldigheid en status worden beschreven.
|Voorbeeld|De uitleg van een begrip is aangepast naar aanleiding van een vraag van een klant
|Min card.|1

|Eigenschap|Waarde
|----------|------
|Label|lijkt op smaller
|Eigenschap|[skos:narrowMatch](http://www.w3.org/2004/02/skos/core#narrowMatch)
|Relatie met|[Extern begrip](http://bp4mc2.org/profiles/skos-ap-sc#ExternalConcept)
|Uitleg|Een begrip kan een generalisatie zijn van een begrip in een ander domein.
|Voorbeeld|Een Postadres is een generalisatie van een Nummeraanduiding en een Postbus.

|Eigenschap|Waarde
|----------|------
|Label|onderdeel van
|Eigenschap|[skosthes:broaderPartitive](http://purl.org/iso25964/skos-thes#broaderPartitive)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip kan gaan over een deel van een breder begrip.
|Voorbeeld|Een motor is onderdeel van een schip.

|Eigenschap|Waarde
|----------|------
|Label|herkomst (begrip)
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[http://www.w3.org/ns/prov#Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een begrip kan de herkomst worden beschreven.
|Voorbeeld|Op basis van de nieuwe wet op de BAG is de definitie van het begrip 'verblijfsobject' aangepast.
|Min card.|1

|Eigenschap|Waarde
|----------|------
|Label|gerelateerd aan
|Eigenschap|[skos:relatedMatch](http://www.w3.org/2004/02/skos/core#relatedMatch)
|Relatie met|[Extern begrip](http://bp4mc2.org/profiles/skos-ap-sc#ExternalConcept)
|Uitleg|Een begrip kan zijn gerelateerd aan een begrip in een ander domein.
|Voorbeeld|Een Perceel in de BRK is gerelateerd aan een adres (Nummeraanduiding) in de BAG.

|Eigenschap|Waarde
|----------|------
|Label|specialisatie van
|Eigenschap|[skosthes:broaderGeneric](http://purl.org/iso25964/skos-thes#broaderGeneric)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip kan een specialisatie zijn van een begrip met een bredere betekenis.
|Voorbeeld|Een Perceel is een OnroerendGoed.


## Collectie

|Eigenschap|Waarde
|----------|------
|Label|Collectie
|Klasse|[skos:Collection](http://www.w3.org/2004/02/skos/core#Collection)
|Uitleg|Een groep samenhangende begrippen kan worden gebundeld in een collectie.
|Voorbeeld|De collectie die alle activiteiten in het BAL beschrijft.
|Eigenschappen|[heeft lid](http://bp4mc2.org/profiles/skos-ap-sc#Collection_hasMember), [label (collectie)](http://bp4mc2.org/profiles/skos-ap-sc#Collection_label), [herkomst (collectie)](http://bp4mc2.org/profiles/skos-ap-sc#Collection_provenance)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|label (collectie)
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Uitleg|Een collectie  heeft een voor mensen leesbare naam. Spaties en diacritische tekens zijn daarin toegestaan.
|Voorbeeld|De collectie die alle activiteiten in het BAL beschrijft heeft als label 'BAL'
|Min card.|1

|Eigenschap|Waarde
|----------|------
|datatype|[http://www.w3.org/2001/XMLSchema#string](http://www.w3.org/2001/XMLSchema#string)
|Label|herkomst (collectie)
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[http://www.w3.org/ns/prov#Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een collectie kan de herkomst worden beschreven.
|Voorbeeld|Op basis van de nieuwe wet op de BAG is een aantal begrippen toegevoegd aan de collectie 'aard gebruik'
|Min card.|1


### Relaties

|Eigenschap|Waarde
|----------|------
|Label|heeft lid
|Eigenschap|[skos:member](http://www.w3.org/2004/02/skos/core#member)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een collectie kan één of meerdere begrippen omvatten, die eventueel afkomstig kunnen zijn uit meerdere conceptschema's
|Voorbeeld|de collectie 'Zakelijke rechten' bevat het begrip 'Erfpacht'


## Begrip (external)

|Eigenschap|Waarde
|----------|------
|example|Het begrip Nummeraanduiding in de BAG in relatie tot het begrip Postadres in de BRK
|Label|Extern begrip
|Uitleg|Een begrip in een ander begrippenkader waarmee een relatie wordt gelegd.


## Uri strategie


Concept schema’s, collecties en concepten krijgen een uri volgens het patroon:

* http://{domain}/id/{ConceptScheme}/{UpperCamelCase(rdfs:label)} voor begrippenkaders
* http://{domain}/id/{Collection}/{UpperCamelCase(rdfs:label)} voor collecties
* http://{domain}/id/{Concept}/{UpperCamelCase(skos:prefLabel)} voor concepten

Good practice is om binnen een domein (begrippenkader) alle prefLabels uniek te maken. Soms is het daarbij nodig de context te vermelden. Dit gebeurt dan tussen haakjes, bijvoorbeeld ‘breedteklasse (wegdeel)’ en ‘breedteklasse (waterdeel)’. Als dit niet gebeurt zijn uri’s niet voorspelbaar op basis van het prefLabel en moeten ze handmatig worden toegekend.
