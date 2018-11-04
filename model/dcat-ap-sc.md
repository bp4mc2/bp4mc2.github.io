# DCAT Toepassingsprofiel voor datasetbeschrijvingen


Op het web is het gebruikelijk data te beschrijven in een catalogus met behulp van DCAT (Data Catalog). DCAT is de W3C standaard die door de EU (ISA) wordt voorgeschreven om datasets binnen Europa op een interoperabele wijze te beschrijven. In Nederland wordt DCAT onder andere toegepast in [data.overheid.nl](https://www.data.overheid.nl), waar alle open datasets in Nederland worden beschreven. Het [nationaal georegister](www.nationaalgeoregister.nl), waar alle open geo-datasets worden beschreven biedt een DCAT export. Voor data.overheid.nl is het toepassingsprofiel DCAT-AP-NL gemaakt. Daarin wordt beschreven welke elementen uit DCAT worden gebruikt en hoe deze elementen specifiek worden ingevuld. Voor de geo-wereld is er Geo-DCAT-AP, dat door de EU (ISA) is opgesteld. Voor de catalogus geldt dat het applicatieprofiel voor DCAT moet voldoen aan bestaande applicatieprofielen voor DCAT, met name DCAT-AP-NL en geoDCAT-AP.

* Het [Nederlands Applicatieprofiel](https://data.overheid.nl/sites/default/files/2014-11-13 DCAT-NL IPM Datasets 0.6 kopie.pdf) voor DCAT (DCAT-AP-NL).
  * is gebaseerd op het DCAT [Application Profile](https://joinup.ec.europa.eu/asset/dcat_application_profile/description) voor data portals in Europa.
  * geeft richtlijnen voor de vertaling van metagegevens in overeenstemming met het Nederlandse metadata profiel op ISO 19115 Geografie, 1.3.1 (ISO19115)
  * is gespecificeerd in een IPM
* [geoDCAT-AP](https://joinup.ec.europa.eu/node/154143/)
  * is een profiel voor data portals in Europa voor het beschrijven van geo datasets, datasetseries en services.
  * biedt een RDF-syntaxbinding voor de alle metadata-elementen van het kernprofiel van ISO 19115: 2003 en die welke zijn gedefinieerd in het kader van de [INSPIRE-richtlijn](http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?Uri=PB:L:2007:108:0001:0014:nl:PDF) Vaak wordt de term Informatie Publicatie Model (IPM) gebruikt. Een IPM voor datasets geeft een norm voor de online uitwisseling van metadata tussen Nederlandse gegevens en catalogi, waaronder: data.overheid.nl, Nationaal Geo Register (NGR) en bijvoorbeeld de (open) data catalogus van gemeenten en provincies.

Een stelselcatalogus kan worden opgezet als Metadata Broker. Een Metadata Broker verzamelt meta data uit verschillende catalogi en ontgrendelt deze collectie weer in een aparte catalogus. De Broker Metadata Catalogus bevat beschrijvingen van de andere catalogi en hun catalogusrecords. Zo worden datasets beschreven in meerdere catalogi. Dit maakt dat deze datasets vanuit dezelfde bron in verschillende contexten, bijvoorbeeld als statistische gegevens en als geografische gegevens, kunnen worden beschreven.

Een dataset is eigenlijk alles wat je een dataset noemt. Dat geeft de ruimte om samenhangende sets met informatie op verschillende niveaus te beschrijven als dataset. Een dataset wordt daarom door de W3C niet scherp gedefinieerd. Dit is met opzet niet gedaan om mogelijk te maken dat het concept dataset  breed bruikbaar is. We staan voor een aanpak waarin de metadata elke dataset aan de bron worden beschreven en metadata brokers deze informatie aan de bron koppelen. Daarbij wordt iedere dataset in 1 catalogus beschreven. Dat is dan de authentieke bron van die metadata.

* Een dataset (algemeen) is de algemene (versieloze) dataset die 1 keer als aan de catalogus kan worden gekoppeld. Dit gebeurt door een link naar de publicatie van de beheerder van de originele dataset in de dcat repository van deze beheerder. De beschrijving gaat over alle versies die ooit zijn geweest of ooit zullen zijn.
* Een dataset (versie) is een versie van een dataset die concrete informatie bevat.
** Dataset versies worden door de beheerder van de originele dataset gepubliceerd en gedocumenteerd in de dcat repository van deze beheerder. Doordat er vanuit de stelselcatalogus al een link is naar de Abstracte dataset en doordat een Concrete dataset wordt gekoppeld aan de Abstracte dataset, is deze informatie direct beschikbaar in de stelselcatalogus.
** Bij een registratie waarin dagelijks vele mutaties worden verwerkt is geen sprake van een traditionele dataset waarvan periodiek, bijvoorbeeld maandelijks een nieuwe versie wordt verspreid. Dat zou na iedere mutatie een nieuwe versie opleveren. Voor beschrijvingen van een authentieke registratie wordt daarom een nieuwe versie van het informatiemodel beschouwd als een nieuwe versie van de dataset.
* Een ‘dataset product’ is een beschrijving van een subset van een dataset die bijvoorbeeld als informatieproduct (bijvoorbeeld een API of een SOAP service) beschikbaar is. Zo’n subset met concrete data is altijd een subset van een concrete dataset versie.
* Een distributie beschrijft een fysieke verspreidingsvorm van een dataset. Dit is altijd een informatieproduct, De distributie bevat bijvoorbeeld de verwijzing naar een download of een API.


![](dcat-ap-sc.png)

## Dataset (algemeen)

|!form data!Klasse|Dataset
|----------|------
|Gebruikte term|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)
|Uitleg|Een dataset is een algemene beschrijving van een verzameling data, gepubliceerd of samengesteld door één beheerder.
|Voorbeeld|De Basisregistratie Kadaster (BRK) bestaat uit de kadastrale registratie van onroerende zaken, zakelijke rechten en de kadastrale kaart.
|Eigenschappen en relaties|[beschrijving](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_description), [titel](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_label), [taal](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_language), [herkomst](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_provenance), [publicist](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_publisher), [type dataset](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset_type)


### Eigenschappen

|!form data!Eigenschap|beschrijving
|----------|------
|Gebruikte term|[dcterms:description](http://purl.org/dc/terms/description)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De dataset kan een duidelijke beschrijving hebben.
|Voorbeeld|Met de Omgevingswet wil de overheid de regels voor ruimtelijke ontwikkeling vereenvoudigen en samenvoegen. Zodat het straks bijvoorbeeld makkelijker is om bouwprojecten te starten. De Crisis- en herstelwet (Chw) maakt dit nu al mogelijk, bijvoorbeeld door bestaande regels aan te passen. Naar verwachting treedt de Omgevingswet in 2019 in werking.

|!form data!Eigenschap|titel
|----------|------
|Gebruikte term|[dcterms:title](http://purl.org/dc/terms/title)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een dataset heeft een naam.
|Voorbeeld|de BRK (in algemene zin)
|Min card.|1
|Max card.|1


### Relaties

|!form data!Eigenschap|taal
|----------|------
|Gebruikte term|[dcterms:language](http://purl.org/dc/terms/language)
|Relatie met|[Taal](http://bp4mc2.org/profiles/dcat-ap-sc#Language)
|Uitleg|De taal waarin de dataset is beschreven (vanwege de compatibiliteit met het DCAT-AP NL) kan worden vastgelegd.
|Voorbeeld|@nl

|!form data!Eigenschap|herkomst
|----------|------
|Gebruikte term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een dataset kan de herkomst worden beschreven.
|Voorbeeld|De BAG is op xx/xx/xx gelanceerd
|Min card.|1

|!form data!Eigenschap|publicist
|----------|------
|Gebruikte term|[dcterms:publisher](http://purl.org/dc/terms/publisher)
|Verwijst naar|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)
|Uitleg|Degene die een dataset publiceert kan worden vastgelegd. Deze organisatie of persoon heeft toestemming om deze handeling uit te voeren.
|Voorbeeld|overheid:Rijkswaterstaat

|!form data!Eigenschap|type dataset
|----------|------
|Gebruikte term|[dcterms:type](http://purl.org/dc/terms/type)
|Relatie met|[Datasettype](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetType)
|Min card.|1
|Max card.|1


## Dataset (versie)

|!form data!Klasse|Dataset (versie)
|----------|------
|Uitleg|Een dataset (versie) is een concrete, geversioneerde beschrijving van een verzameling data, gepubliceerd of samengesteld door één beheerder.
|Voorbeeld|De Basisregistratie Kadaster (BRK) zoals beschreven in IMKAD 2.1.
|Eigenschappen en relaties|[beschreven door](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_describedBy), [distributie](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_distribution), [geografische afbakening](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_geometricDemarcation), [herkomst](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_provenance), [type dataset = DatasetVersie](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_type), [versie](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_version), [versie-notities](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_versionNotes), [versie van](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion_versionOf)


### Eigenschappen

|!form data!Eigenschap|versie
|----------|------
|Gebruikte term|[adms:version](http://www.w3.org/ns/adms#version)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een dataset (versie) kan een versie aanduiding hebben.
|Voorbeeld|2.1.0

|!form data!Eigenschap|versie-notities
|----------|------
|Gebruikte term|[adms:versionNotes](http://www.w3.org/ns/adms#versionNotes)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een dataset (versie) kan release notes bevatten.
|Voorbeeld|IMKAD 2.1.0 (publicatie 22-11-2011) is de final draft versie van IMKAD 2 zoals die is aangeboden aan belanghebbenden voor beoordeling. Het commentaar is voor zover mogelijk verwerkt in versie 2.1.1. Deze wijzigingen zijn terug te vinden in de change log.


### Relaties

|!form data!Eigenschap|beschreven door
|----------|------
|Gebruikte term|[wdrs:describedBy](http://www.w3.org/2007/05/powder-s#describedBy)
|Relatie met|[Datamodel](http://bp4mc2.org/profiles/dcat-ap-sc#Datamodel)
|Uitleg|De data in een dataset (version) is beschreven door een informatiemodel.
|Voorbeeld|kadaster.nl/schemas/imkad

|!form data!Eigenschap|distributie
|----------|------
|Gebruikte term|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)
|Verwijst naar|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)
|Uitleg|De kanalen via welke een dataset (versie) kan worden verspreid kunnen worden gespecificeerd.
|Voorbeeld|Digitale Kadastrale Kaart download service.

|!form data!Eigenschap|geografische afbakening
|----------|------
|Gebruikte term|[dcterms:spatial](http://purl.org/dc/terms/spatial)
|Verwijst naar|[dcterms:Location](http://purl.org/dc/terms/Location)
|Uitleg|Het gebied waar de dataset over gaat kan worden gespecificeerd.
|Voorbeeld|de link naar de aanduiding voor de gemeente Apeldoorn

|!form data!Eigenschap|herkomst
|----------|------
|Gebruikte term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een dataset (versie) kan de herkomst worden beschreven.
|Voorbeeld|De BAG 2.0 is op xx/xx/xx gelanceerd
|Min card.|1

|!form data!Eigenschap|type dataset = DatasetVersie
|----------|------
|Gebruikte term|[dcterms:type](http://purl.org/dc/terms/type)
|Waarde|[Dataset (versie)](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion)
|Uitleg|Indien sprake is van een datasetversie, dan wordt deze als zodanig getypeerd
|Voorbeeld|
|Min card.|1
|Max card.|1

|!form data!Eigenschap|versie van
|----------|------
|Gebruikte term|[dcterms:isVersionOf](http://purl.org/dc/terms/isVersionOf)
|Relatie met|[Dataset](http://bp4mc2.org/profiles/dcat-ap-sc#Dataset)
|Uitleg|Een dataset (versie) kan zijn afgeleid van een dataset (algemeen).
|Voorbeeld|IMKAD 2.1.0 is een concrete versie van IMKAD.
|Max card.|1


## Dataset (product)

|!form data!Klasse|Dataset (product)
|----------|------
|Uitleg|Een dataset (product) is een concreet, geversioneerd informatieproduct op basis van de data in een dataset (versie)
|Voorbeeld|De BRK levering versie 2.2 zoals beschreven in BRKlevering.uml
|Eigenschappen en relaties|[distributie](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_distribution), [afgeleid van](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_isDerivedFrom), [herkomst](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_provenance), [heeft gemeten kwaliteit](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_qualityMeasurement), [type dataset = DatasetProduct](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_type), [versie](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_version), [versie notities](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct_versionNotes)


### Eigenschappen

|!form data!Eigenschap|versie
|----------|------
|Gebruikte term|[adms:version](http://www.w3.org/ns/adms#version)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een dataset (product) kan een versie aanduiding hebben.
|Voorbeeld|2.1.0

|!form data!Eigenschap|versie notities
|----------|------
|Gebruikte term|[adms:versionNotes](http://www.w3.org/ns/adms#versionNotes)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een dataset (product) kan release notes bevatten.
|Voorbeeld|BRK levering 2.2 is aangepast aan IMKAD 2.1.0, waarmee de volgende nieuwe functionaliteit is toegevoegd ...


### Relaties

|!form data!Eigenschap|distributie
|----------|------
|Gebruikte term|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)
|Verwijst naar|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)
|Uitleg|De kanalen via welke een dataset (product) kan worden verspreid kunnen worden gespecificeerd.
|Voorbeeld|De 'BAG extract' download service.

|!form data!Eigenschap|afgeleid van
|----------|------
|Gebruikte term|[dcterms:relation](http://purl.org/dc/terms/relation)
|Relatie met|[Dataset (versie)](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetVersion)
|Uitleg|Een dataset (product) kan zijn afgeleid van een dataset (versie).
|Voorbeeld|BRK levering 2.2 isafgeleid van IMKAD 2.1.0.

|!form data!Eigenschap|herkomst
|----------|------
|Gebruikte term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een informatie product kan de herkomst worden beschreven.
|Voorbeeld|De BAG 2.0 is op xx/xx/xx gelanceerd
|Min card.|1

|!form data!Eigenschap|heeft gemeten kwaliteit
|----------|------
|Gebruikte term|[dqv:hasQualityMeasurement](http://www.w3.org/ns/dqv#hasQualityMeasurement)
|Verwijst naar|[dqv:QualityMeasurement](http://www.w3.org/ns/dqv#QualityMeasurement)
|Uitleg|Een dataset (product) kan een schatting van de kwaliteit hebben tegen een specifieke kwaliteitsmetriek.
|Voorbeeld|De data in het BAG extract voor de gemeente Apeldoorn zijn voor 99,5% corect op basis van handmatige controle van een steekproef.

|!form data!Eigenschap|type dataset = DatasetProduct
|----------|------
|Gebruikte term|[dcterms:type](http://purl.org/dc/terms/type)
|Waarde|[Dataset (product)](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetProduct)
|Uitleg|Indien sprake is van een datasetproduct, dan wordt deze als zodanig getypeerd
|Voorbeeld|
|Min card.|1
|Max card.|1


## Catalogus

|!form data!Klasse|Catalogus
|----------|------
|Gebruikte term|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)
|Uitleg|Een catalogus is een samengestelde verzameling (federatief beheerde) metagegevens over datasets (algemeen, versie en product), distributies en bijbehorende assets
|Voorbeeld|De catalogus voor de BRK met de verschillende versies, informatieproducten, begrippen, waardelijsten en informatiemodellen
|Eigenschappen en relaties|[bevat dataset](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_dataset), [beschrijving](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_description), [webpagina](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_homepage), [taal](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_language), [licentie](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_licence), [naam](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_name), [herkomst](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_provenance), [rechten](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_rights)


### Eigenschappen

|!form data!Eigenschap|beschrijving
|----------|------
|Gebruikte term|[dcterms:description](http://purl.org/dc/terms/description)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De catalogus kan een beschrijving hebben.
|Voorbeeld|De Catalogus voor de Omgevingswet is een centrale ingang tot het stelsel, waarin wetgeving, begrippen, regels, informatiemodellen, datasets, producten en services met elkaar worden verbonden. De catalogus is daarmee een centrale plek waar de verschillende gebruikersgroepen van het stelsel kunnen zien waar het stelsel uit bestaat, wat begrippen betekenen en hoe de verschillende elementen van het stelsel aan elkaar zijn gerelateerd.

|!form data!Eigenschap|naam
|----------|------
|Gebruikte term|[dcterms:title](http://purl.org/dc/terms/title)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De catalogus kan een naam hebben
|Voorbeeld|Catalogus Omgevingswet


### Relaties

|!form data!Eigenschap|bevat dataset
|----------|------
|Gebruikte term|[dcat:dataset](http://www.w3.org/ns/dcat#dataset)
|Verwijst naar|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)
|Uitleg|Een al dan niet elders beheerde dataset kan worden opgenomen in de catalogus via een link naar die dataset (algemeen).
|Voorbeeld|De opname van de beschrijving van de BAG in de stelselcatalogus Omgevingswet via een link naar bag.basisregsitraties.overheid.nl/id/dataset/BAG

|!form data!Eigenschap|webpagina
|----------|------
|Gebruikte term|[foaf:homepage](http://xmlns.com/foaf/0.1/homepage)
|Verwijst naar|[foaf:Document](http://xmlns.com/foaf/0.1/Document)
|Uitleg|De webpagina via welke de catalogus vindbaar is kan worden gespecificeerd.
|Voorbeeld|http://catalogus.kadaster.nl/

|!form data!Eigenschap|taal
|----------|------
|Gebruikte term|[dcterms:language](http://purl.org/dc/terms/language)
|Relatie met|[Taal](http://bp4mc2.org/profiles/dcat-ap-sc#Language)
|Uitleg|De taal waarin de metadata de catalogus is beschreven kan worden gespecificeerd.
|Voorbeeld|@nl

|!form data!Eigenschap|licentie
|----------|------
|Gebruikte term|[dcterms:license](http://purl.org/dc/terms/license)
|Verwijst naar|[dcterms:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)
|Uitleg|De licentie is van toepassing op de catalogus kan worden gespecificeerd. Dit kan een andere licentie zijn als de licentie voor distributies van datasets.
|Voorbeeld|Creative Commons Naamsvermelding 4.0 licentie

|!form data!Eigenschap|herkomst
|----------|------
|Gebruikte term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een catalogus kan de herkomst worden beschreven.
|Voorbeeld|De beschrijving van de catalogus voor de BAG is aangepast nav de nieuwe wet op de BAG
|Min card.|1

|!form data!Eigenschap|rechten
|----------|------
|Gebruikte term|[dcterms:rights](http://purl.org/dc/terms/rights)
|Verwijst naar|[dcterms:RightsStatement](http://purl.org/dc/terms/RightsStatement)
|Uitleg|De rechten die van toepassing zijn op de catalogus kunnen worden beschreven. Dit kunnen andere rechten zijn als die voor distributies van datasets
|Voorbeeld|Proclaimer: De Catalogus voor de Omgevingswet verbindt definities, toelichtingen en uitleg van begrippen, regels, informatiemodellen, producten en services met elkaar. De datasets waarin deze worden beschreven worden federatief beheerd door de betreffende bronhouders. Bij iedere dataset wordt aangegeven wie de bronhouder is en daarmee verantwoordelijk is voor de inhoud.


## Distributie

|!form data!Klasse|Catalogus
|----------|------
|Gebruikte term|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)
|Uitleg|Een catalogus is een samengestelde verzameling (federatief beheerde) metagegevens over datasets (algemeen, versie en product), distributies en bijbehorende assets
|Voorbeeld|De catalogus voor de BRK met de verschillende versies, informatieproducten, begrippen, waardelijsten en informatiemodellen
|Eigenschappen en relaties|[bevat dataset](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_dataset), [beschrijving](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_description), [webpagina](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_homepage), [taal](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_language), [licentie](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_licence), [naam](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_name), [herkomst](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_provenance), [rechten](http://bp4mc2.org/profiles/dcat-ap-sc#Catalog_rights)


### Eigenschappen

|!form data!Eigenschap|beschrijving
|----------|------
|Gebruikte term|[dcterms:description](http://purl.org/dc/terms/description)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De distributie kan een beschrijving hebben.
|Voorbeeld|Het Kadaster is houder van de Basisregistratie Kadaster (BRK). Onderdeel van de BRK is de Digitale kadastrale kaart. Deze is beschikbaar als open data en nu via dit portaal ook als Linked Open Data (vooralsnog zonder de topografie).

|!form data!Eigenschap|naam (distirbutie)
|----------|------
|Gebruikte term|[dcterms:title](http://purl.org/dc/terms/title)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De distributie kan een naam hebben
|Voorbeeld|Digitale Kadastrale Kaart download service


### Relaties

|!form data!Eigenschap|toegangs url
|----------|------
|Gebruikte term|[dcat:accessURL](http://www.w3.org/ns/dcat#accessURL)
|Verwijst naar|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)
|Uitleg|Een distributie kan een API zijn of een webservice die toegankelijk is via een url.
|Voorbeeld|https://data.pdok.nl/brk/api/v1

|!form data!Eigenschap|download url
|----------|------
|Gebruikte term|[dcat:downloadURL](http://www.w3.org/ns/dcat#downloadURL)
|Verwijst naar|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)
|Uitleg|Een distributie kan een downloadservice zijn die toegankelijk is via een url.
|Voorbeeld|https://www.pdok.nl/nl/producten/pdok-downloads/basis-registratie-kadaster/kadastrale-kaart

|!form data!Eigenschap|licentie
|----------|------
|Gebruikte term|[dcterms:license](http://purl.org/dc/terms/license)
|Verwijst naar|[dcterms:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)
|Uitleg|De licentie is van toepassing op de distributie kan worden gespecificeerd. Dit kan een andere licentie zijn als de licentie voor de catalogus.
|Voorbeeld|Creative Commons Naamsvermelding 4.0 licentie

|!form data!Eigenschap|herkomst
|----------|------
|Gebruikte term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Verwijst naar|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Van een distirbutie kan de herkomst worden beschreven.
|Voorbeeld|De beschrijving van de catalogus voor de BAG is aangepast nav de nieuwe wet op de BAG
|Min card.|1

|!form data!Eigenschap|rechten
|----------|------
|Gebruikte term|[dcterms:rights](http://purl.org/dc/terms/rights)
|Verwijst naar|[dcterms:RightsStatement](http://purl.org/dc/terms/RightsStatement)
|Uitleg|De rechten die van toepassing zijn op de distributie kunnen worden beschreven. Dit kunnen andere rechten zijn als die voor distributies van de catalogus. Zie ook: svbg:gebruiksvoorwaarden en iso:confidentiality., De rechten met betrekking tot de distributie zijn beschreven. See also svbg:gebruiksvoorwaarden en iso:confidentiality.
|Voorbeeld|Wilt u direct aan  de slag met BRK Levering? Raadpleeg dan de reference card bij 'Documenten'. Daarin vindt u de stappen die u moet zetten om met BRK Levering te kunnen starten. Eerste of éénmalige levering tot 100.000 objecten, per object €1,16;tot 1.000.000 objecten, per object €0,98;bij meer dan 1.000.000 objecten, per object €0,73;Gebiedsuitbreiding van een bestaand abonnement, per object €1,16;Abonnementslevering, per jaar en per 1.000 objecten binnen abonnement €208,00;Extra (losse) levering van een bestand, per verstrekking €192,00;Tweede mutatie-abonnement, per jaar €192,00;Deze bedragen zijn vrij van btw;Dit product valt onder de budgetfinanciering BRK.


## Licentiedocument

|!form data!Klasse|Licentiedocument
|----------|------
|Gebruikte term|[dcterms:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)
|Eigenschappen en relaties|[titel](http://bp4mc2.org/profiles/dcat-ap-sc#LicenseDocument_title)


### Eigenschappen

|!form data!Eigenschap|titel
|----------|------
|Gebruikte term|[dcterms:title](http://purl.org/dc/terms/title)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een licentiedocument heeft een titel.
|Voorbeeld|Creative Commons Naamsvermelding 4.0 licentie
|Min card.|1
|Max card.|1


## Rechtenbeschrijving

|!form data!Klasse|Rechtenbeschrijving
|----------|------
|Gebruikte term|[dcterms:RightsStatement](http://purl.org/dc/terms/RightsStatement)
|Eigenschappen en relaties|[titel](http://bp4mc2.org/profiles/dcat-ap-sc#RightsStatement_title)


### Eigenschappen

|!form data!Eigenschap|titel
|----------|------
|Gebruikte term|[dcterms:title](http://purl.org/dc/terms/title)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een rechtenbeschrijving heeft een titel.
|Min card.|1
|Max card.|1


## Taal

|!form data!Klasse|Taal
|----------|------
|Getypeerd als|[http://purl.org/dc/terms/LinguisticSystem](http://purl.org/dc/terms/LinguisticSystem)
|Waardelijst|[http://publications.europa.eu/mdr/authority/language/](http://publications.europa.eu/mdr/authority/language/)


## Dataset type

|!form data!Klasse|Datasettype
|----------|------
|Waardelijst|[Datasettypes](http://bp4mc2.org/profiles/dcat-ap-sc#DatasetTypes)


## Uri strategie


Catalogi, datasets (algemeen), datasets (versie), datasets (product) en distirbuties krijgen een uri volgens het patroon:

* `http://{domain}/id/catalog/{UpperCamelCase(rdfs:label)}` voor catalogi
* `http://{domain}/id/dataset/{UpperCamelCase(rdfs:label)}` voor datasets (algemeen)
* `http://{domain}/id/dataset/{UpperCamelCase(rdfs:label)}` voor datasets (versie)
* `http://{domain}/id/dataset/{UpperCamelCase(rdfs:label)}` voor datasets (product)
* `http://{domain}/id/distribution/{UpperCamelCase(rdfs:label)}` voor distributies


