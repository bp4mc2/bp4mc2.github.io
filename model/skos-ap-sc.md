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
|Klasse|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)
|Uitleg|De kennis over de fysieke werkelijkheid wordt beschreven in een talig model, een begrippenmodel.  In een begrippenmodel wordt deze kennis zodanig gestructureerd vastgelegd dat deze door zowel mensen als door computers wordt begrepen.
|Voorbeeld|De thesaurus of taxonomie met alle begrippen in het Kadastrale domein. Deze begrippen vinden hun oorsprong in de Kadasterwet, die beschrijft wat percelen en rechten daarop betekenen.
|Eigenschappen en relaties|[top concept](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_hasTopConcept), [label](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_label)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|Naam|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
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
|Klasse|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip is een idee of notitie, een eenheid van denken, een onderwerp van gesprek.
|Voorbeeld|het begrip 'Perceel' in de BRK
|Eigenschappen en relaties|[lijkt op breder](http://bp4mc2.org/profiles/skos-ap-sc#Concept_broadlyMatches), [vergelijkbaar met](http://bp4mc2.org/profiles/skos-ap-sc#Concept_closelyMatches), [uitleg](http://bp4mc2.org/profiles/skos-ap-sc#Concept_comment), [bestaat uit](http://bp4mc2.org/profiles/skos-ap-sc#Concept_consistsOf), [geschreven bron](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dcsource), [bron op het web](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dctsource), [definitie](http://bp4mc2.org/profiles/skos-ap-sc#Concept_definition), [domein](http://bp4mc2.org/profiles/skos-ap-sc#Concept_domain), [redactionele opmerking](http://bp4mc2.org/profiles/skos-ap-sc#Concept_editorialNote), [exact gelijk aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_exactlyMatches), [generalisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_generalisationOf), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_isRelatedTo), [label](http://bp4mc2.org/profiles/skos-ap-sc#Concept_label), [lijkt op smaller](http://bp4mc2.org/profiles/skos-ap-sc#Concept_narrowlyMatches), [onderdeel van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_partOf), [voorkeursterm](http://bp4mc2.org/profiles/skos-ap-sc#Concept_prefLabel), [herkomst](http://bp4mc2.org/profiles/skos-ap-sc#Concept_provenance), [toelichting](http://bp4mc2.org/profiles/skos-ap-sc#Concept_scopeNote), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_seeAlso), [specialisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_specialisationOf), [alternatieve aanduiding](http://bp4mc2.org/profiles/skos-ap-sc#Concept_synonym)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|Naam|uitleg
|Eigenschap|[rdfs:comment](http://www.w3.org/2000/01/rdf-schema#comment)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip heeft bij voorkeur een uitleg in ‘klare taal’.
|Voorbeeld|Een perceel is een stuk grond waarvan het Kadaster de grenzen heeft gemeten en dat bij het Kadaster een eigen nummer heeft.
|Min card.|1

|Eigenschap|Waarde
|----------|------
|Naam|geschreven bron
|Eigenschap|[dc:source](http://purl.org/dc/elements/1.1/source)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip is ontleend aan een geschreven bron.
|Voorbeeld|Europees verdrag voor de rechten van de mens

|Eigenschap|Waarde
|----------|------
|Naam|definitie
|Eigenschap|[skos:definition](http://www.w3.org/2004/02/skos/core#definition)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip kan een formele definitiehebben. Deze wordt waar mogelijk overgenomen uit een officiële publicatie.
|Voorbeeld|Een perceel is een begrensd deel van het Nederlands grondgebied dat kadastraal geïdentificeerd is en met kadastrale grenzen begrensd is.
|Min card.|1

|Eigenschap|Waarde
|----------|------
|Naam|redactionele opmerking
|Eigenschap|[skos:editorialNote](http://www.w3.org/2004/02/skos/core#editorialNote)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip kan een redactionele opmerking hebben.
|Voorbeeld|Dit begrip wordt nog gewijzigd bij het invoeringsbesluit.

|Eigenschap|Waarde
|----------|------
|Naam|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip wordt aangeduid met een voor mensen leesbare term (inclusief spaties en diacrieten). Deze is gelijk aan het skos:prefLabel. Uitzondering hierop is de situatie dat binnen 1 conceptschema er vaker dezelfde skos:prefLabel wordt gebruikt. Dit is geen good practice en dient zoveel mogelijk voorkomen te worden. In het geval dat dit toch voorkomt, krijgt het rdfs:label een toevoeging tussen haakjes die het onderscheid aangeeft. Dit label kan meertalig zijn, aangegeven door @nl of @en
|Voorbeeld|"Kadastraal perceel"@nl / "Cadastral parcel"@en
|Min card.|1

|Eigenschap|Waarde
|----------|------
|Naam|voorkeursterm
|Eigenschap|[skos:prefLabel](http://www.w3.org/2004/02/skos/core#prefLabel)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip heeft een voor mensen leesbare voorkeursterm. Er is precies 1 voorkeursterm in de voorkeurstaal (dit veld is dus niet meertalig). Het is een good practice dat ieder begrip binen 1 begrippenkader een uniek prefLabel heeft.
|Voorbeeld|Kadastraal perceel
|Min card.|1
|Max card.|1

|Eigenschap|Waarde
|----------|------
|Naam|toelichting
|Eigenschap|[skos:scopeNote](http://www.w3.org/2004/02/skos/core#scopeNote)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een begrip kan nader worden toegelicht.
|Voorbeeld|Een perceel is een (2D) vlakvormig ruimtelijk object dat "opdelend" van structuur is. Dit betekent dat Nederland altijd naadloos en volledig is bedekt met perceelsvlakken, die elkaar niet mogen overlappen.

|Eigenschap|Waarde
|----------|------
|Naam|alternatieve aanduiding
|Eigenschap|[skos:altLabel](http://www.w3.org/2004/02/skos/core#altLabel)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
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
|Verwijst naar|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)
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
|Label|herkomst
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
|Klasse|[skos:Collection](http://www.w3.org/2004/02/skos/core#Collection)
|Uitleg|Een groep samenhangende begrippen kan worden gebundeld in een collectie.
|Voorbeeld|De collectie die alle activiteiten in het BAL beschrijft.
|Eigenschappen en relaties|[heeft lid](http://bp4mc2.org/profiles/skos-ap-sc#Collection_hasMember), [label](http://bp4mc2.org/profiles/skos-ap-sc#Collection_label), [herkomst](http://bp4mc2.org/profiles/skos-ap-sc#Collection_provenance)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|Naam|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een collectie  heeft een voor mensen leesbare naam. Spaties en diacritische tekens zijn daarin toegestaan.
|Voorbeeld|De collectie die alle activiteiten in het BAL beschrijft heeft als label 'BAL'
|Min card.|1

|Eigenschap|Waarde
|----------|------
|class|[http://www.w3.org/ns/prov#Entity](http://www.w3.org/ns/prov#Entity)
|Naam|herkomst
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
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
|Uitleg|Een begrip in een ander begrippenkader waarmee een relatie wordt gelegd.
|Voorbeeld|Het begrip Nummeraanduiding in de BAG in relatie tot het begrip Postadres in de BRK


## Begrippenkader als asset


Een begrippenkader kan gezien worden als een asset. Deze Asset betreft een Dataset met als inhoud alle eigenschappen van de begrippen en collecties binnen dit begrippenkader.


|Eigenschap|Waarde
|----------|------
|Uitleg|Een begrippenkader kan worden gezien als een asset.
|Voorbeeld|De thesaurus of taxonomie met alle begrippen in het Kadastrale domein kunnen worden gezien als asset voor de BRK dataset.
|Eigenschappen en relaties|[type asset = Begrippenkader](http://bp4mc2.org/profiles/skos-ap-sc#AssetConceptScheme_typeConceptScheme)


### Relaties

|Eigenschap|Waarde
|----------|------
|Label|type asset = Begrippenkader
|Eigenschap|[dcterms:type](http://purl.org/dc/terms/type)
|Waarde|[Asset (Begrippenkader)](http://bp4mc2.org/profiles/skos-ap-sc#AssetConceptScheme)
|Uitleg|Een begrippenkader wordt expliciet getypeerd als begrippenkader.
|Voorbeeld|
|Min card.|1
|Max card.|1


## Uri strategie


Concept schema’s, collecties en concepten krijgen een uri volgens het patroon:

* `http://{domain}/id/scheme/{UpperCamelCase(rdfs:label)}` voor begrippenkaders
* `http://{domain}/id/collection/{UpperCamelCase(rdfs:label)}` voor collecties
* `http://{domain}/id/concept/{UpperCamelCase(skos:prefLabel)}` voor concepten

Bovenstaande gaat er vanuit dat `{domain}` het begrippenkader al uniek identificeert, waardoor de toevoegen van het `rdfs:label` puur voor opslaggemak zorgt. Mocht echter het `{domain}` het begrippenkader *niet* uniek identificeren, dan geldt voor concepten en collecties de volgende uitbreiding:
* `http://{domain}/id/concept/{conceptscheme}/{term}` voor concepten
* `http://{domain}/id/collection/{conceptscheme}/{term}` voor collecties

The `{skos:prefLabel}` should be unique for all concepts in a particular concept scheme. If this is not the case, the URI should be extended with a `_{context}` postfix.


