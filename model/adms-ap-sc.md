# ADMS Toepassingsprofiel voor productbeschrijvingen


ADMS is de W3C standaard voor het beschrijven van ‘semantic assets’ die worden gebruikt binnen de eOverheid. In een stelselcatalogus gaat het concreet om herbruikbare metadata van
* taxonomieën of woordenboeken die het begrippenkader bevatten met de ‘onderwerpen van gesprek’ van een dataset (algemeen).
* referentiedata en waardelijsten van bij een dataset (algemeen) die kunnen worden hergebruikt in andere domeinen.
* informatiemodellen van een dataset (versie) of van een dataset (product).

Iedere metadatabeschrijving, in ADMS termen een asset kan een eigen webpagina hebben.

Een metadatabeschrijving kan op verschillende manieren te beschikking worden gesteld, bijvoorbeeld als pdf download, als ttl beschrijving of als html beschrijving. Voor waardelijsten is ook csv en xml/gc (genericode) gangbaar. Voor informatiemodellen is XMI als uitwisselingsstandaard voor UML representaties gangbaar. Iedere vorm waarin een metadatabeschrijving (adms:Asset) beschikbaar wordt gesteld, kan expliciet worden beschreven als distirbutie (adms:Distribution).

Van metadatabeschrijvingen en distributies kan provenance worden bijgehouden.
* Voor begrippenkaders en voor referentiedata of waardelijsten geldt dat die meestal in een ‘continious delivery’ proces worden beheerd. Dat wil zeggen dat de metadatabeschrijving 1 keer wordt gepubliceerd en vervolgens de begrippen en referentiedata per begrip respectievelijk referentiegegeven worden beheerd. De provenance wordt dan op het niveau van begrip respectievelijk referentiegegeven beheerd.
* Voor waardelijsten kan daarnaast worden gekozen om deze periodiek te releasen. Iedere release wordt dan een nieuwe versie van de metadatabeschrijving.
* Informatiemodellen worden altijd in zijn geheel in 1 keer gepubliceerd, c.q. gereleased. Iedere release krijgt een nieuwe versie van de metadatabeschrijving.


![](adms-ap-sc.png)

## Asset

|!form data!Klasse|Asset
|----------|------
|Uitleg|Een asset is een set van herbruikbare metadata en referentiegegevens die worden gebruikt voor de ontwikkeling van e-overheidssystemen.
|Voorbeeld|De waardelijst met Kadastrale gemeenten.
|Eigenschappen en relaties|[heeft distributie](http://bp4mc2.org/profiles/adms-ap-sc#Asset_distribution), [naam](http://bp4mc2.org/profiles/adms-ap-sc#Asset_label), [heeft webpagina](http://bp4mc2.org/profiles/adms-ap-sc#Asset_landingPage), [onderdeel van](http://bp4mc2.org/profiles/adms-ap-sc#Asset_partOf), [herkomst](http://bp4mc2.org/profiles/adms-ap-sc#Asset_provenance)


### Eigenschappen

|!form data!Eigenschap|naam
|----------|------
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een asset heeft een naam.
|Voorbeeld|Landenlijst
|Min card.|1
|Max card.|1


### Relaties

|!form data!Eigenschap|heeft distributie
|----------|------
|Eigenschap|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)
|Relatie met|[Distributie](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution)
|Uitleg|De wijze waarop een asset wordt gepubliceerd kan worden aangegeven.
|Voorbeeld|De lijst met Kadastrale gemeenten kan worden gepubliceerd in genericode.

|!form data!Eigenschap|heeft webpagina
|----------|------
|Eigenschap|[dcat:landingPage](http://www.w3.org/ns/dcat#landingPage)
|Relatie met|[Webpagina](http://bp4mc2.org/profiles/adms-ap-sc#LandingPage)
|Uitleg|De webpagina waarop een asset vindbaar is kan worden gespecificeerd.
|Voorbeeld|kadaster.nl/waardelijsten.
|Max card.|1

|!form data!Eigenschap|onderdeel van
|----------|------
|Eigenschap|[dcterms:isPartOf](http://purl.org/dc/terms/isPartOf)
|Relatie met|[http://bp4mc2.org/profiles/adms-ap-sc#Dataset](http://bp4mc2.org/profiles/adms-ap-sc#Dataset)
|Uitleg|Een asset kan onderdeel zijn van een dataset.
|Voorbeeld|De lijst met Kadastrale gemeenten is onderdeel van de BRK.
|Max card.|1

|!form data!Eigenschap|herkomst
|----------|------
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een asset kan de herkomst worden beschreven.
|Voorbeeld|Op basis van de nieuwe wet op de BAG is een een nieuw informatiemodel opgesteld
|Min card.|1


## Asset distributie

|!form data!Klasse|Distributie
|----------|------
|Gebruikte term|[distribution](http://www.w3.org/ns/adms#Distribution)
|Uitleg|De wijze waarop een asset wordt gepubliceerd.
|Voorbeeld|De genericode publicatie van de lijst met Kadastrale gemeenten.
|Eigenschappen en relaties|[toegang url](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution_accessURL), [download url](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution_downloadURL), [herkomst](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution_provenance), [representatie formaat](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution_representationTechnique)


### Relaties

|!form data!Eigenschap|heeft distributie
|----------|------
|Eigenschap|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)
|Relatie met|[Distributie](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution)
|Uitleg|De wijze waarop een asset wordt gepubliceerd kan worden aangegeven.
|Voorbeeld|De lijst met Kadastrale gemeenten kan worden gepubliceerd in genericode.

|!form data!Eigenschap|heeft webpagina
|----------|------
|Eigenschap|[dcat:landingPage](http://www.w3.org/ns/dcat#landingPage)
|Relatie met|[Webpagina](http://bp4mc2.org/profiles/adms-ap-sc#LandingPage)
|Uitleg|De webpagina waarop een asset vindbaar is kan worden gespecificeerd.
|Voorbeeld|kadaster.nl/waardelijsten.
|Max card.|1

|!form data!Eigenschap|onderdeel van
|----------|------
|Eigenschap|[dcterms:isPartOf](http://purl.org/dc/terms/isPartOf)
|Relatie met|[http://bp4mc2.org/profiles/adms-ap-sc#Dataset](http://bp4mc2.org/profiles/adms-ap-sc#Dataset)
|Uitleg|Een asset kan onderdeel zijn van een dataset.
|Voorbeeld|De lijst met Kadastrale gemeenten is onderdeel van de BRK.
|Max card.|1

|!form data!Eigenschap|herkomst
|----------|------
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een asset kan de herkomst worden beschreven.
|Voorbeeld|Op basis van de nieuwe wet op de BAG is een een nieuw informatiemodel opgesteld
|Min card.|1


## Webpagina

|!form data!Klasse|Webpagina
|----------|------
|Uitleg|De webpagina van welke een asset vindbaar is.
|Voorbeeld|kadaster.nl/waardelijsten.


## Download formaat


### Eigenschappen


### Relaties

|!form data!Eigenschap|heeft distributie
|----------|------
|Eigenschap|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)
|Relatie met|[Distributie](http://bp4mc2.org/profiles/adms-ap-sc#AssetDistribution)
|Uitleg|De wijze waarop een asset wordt gepubliceerd kan worden aangegeven.
|Voorbeeld|De lijst met Kadastrale gemeenten kan worden gepubliceerd in genericode.

|!form data!Eigenschap|heeft webpagina
|----------|------
|Eigenschap|[dcat:landingPage](http://www.w3.org/ns/dcat#landingPage)
|Relatie met|[Webpagina](http://bp4mc2.org/profiles/adms-ap-sc#LandingPage)
|Uitleg|De webpagina waarop een asset vindbaar is kan worden gespecificeerd.
|Voorbeeld|kadaster.nl/waardelijsten.
|Max card.|1

|!form data!Eigenschap|onderdeel van
|----------|------
|Eigenschap|[dcterms:isPartOf](http://purl.org/dc/terms/isPartOf)
|Relatie met|[http://bp4mc2.org/profiles/adms-ap-sc#Dataset](http://bp4mc2.org/profiles/adms-ap-sc#Dataset)
|Uitleg|Een asset kan onderdeel zijn van een dataset.
|Voorbeeld|De lijst met Kadastrale gemeenten is onderdeel van de BRK.
|Max card.|1

|!form data!Eigenschap|herkomst
|----------|------
|Eigenschap|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een asset kan de herkomst worden beschreven.
|Voorbeeld|Op basis van de nieuwe wet op de BAG is een een nieuw informatiemodel opgesteld
|Min card.|1


## Uri strategie


Assets en asset distributies krijgen een uri volgens het patroon:

* http://{domain}/id/{asset-type}/{UpperCamelCase(rdfs:label)} voor assets
* http://{domain}/id/{asset-type}/{UpperCamelCase(rdfs:label)}.{extension} voor asset distributies

Daarbij geldt dat `{asset-type}` de volgende waarden kan hebben, afhankelijk van het type asset:
* `codelist` voor waardelijsten;
* `scheme` voor begrippenkaders;
* `model` voor informatiemodellen.

En voor `{extension}` geldt dat hiervoor de standaard bestandsformaat extensies worden gebruikt, zoals:
* `ttl` voor turtle bestanden;
* `pdf` voor pdf bestanden;
* `xml` voor xml bestanden.


