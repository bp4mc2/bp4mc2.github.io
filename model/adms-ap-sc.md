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


### Eigenschappen


### Relaties


## Asset distributie


### Eigenschappen


### Relaties


## Webpagina


### Eigenschappen


### Relaties


## Download formaat


### Eigenschappen


### Relaties


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


